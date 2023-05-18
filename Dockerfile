FROM ghcr.io/binkhq/python:3.10-poetry

WORKDIR /app

RUN poetry config virtualenvs.create false

COPY . .

RUN poetry install
RUN apt-get update && apt-get install -y wget unzip && apt-get install -y curl

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \
    wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y -f ./google-chrome-stable_current_amd64.deb && \
    /app/install_chrome_driver.sh

CMD [ "python", "schedule.py" ]