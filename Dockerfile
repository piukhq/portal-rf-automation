FROM ghcr.io/binkhq/python:3.9

WORKDIR /app
ADD . .

RUN pip install --no-cache-dir pipenv==2022.6.7 && \
    pipenv install --system --deploy --ignore-pipfile && \
    apt-get update && apt-get install -y wget && \
    apt-get autoremove -y wget && rm -rf /var/lib/apt/lists

CMD [ "python", "schedule.py" ]
