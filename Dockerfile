FROM ghcr.io/binkhq/python:3.10-poetry

WORKDIR /app
ADD . .

RUN poetry install && \
    apt-get update && apt-get install -y wget && apt-get install -y curl && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \
    apt-get autoremove -y wget && rm -rf /var/lib/apt/lists

CMD [ "python", "schedule.py" ]