import json
import requests
from portal_api import config


class Endpoint:
    BASE_URL = ""

    @staticmethod
    def set_environment(env):
        Endpoint.BASE_URL = getattr(config, env.upper()).base_url

    @staticmethod
    def request_header():

        headers = {"Accept": "*/*", "Content-Type": "application/json",
                   "Authorization": "Bearer 7eDcxsAhXJbLeLde8v27tK2Kofw50pPW"}

        return headers

    @staticmethod
    def call(url, headers, method="GET", body=None):
        return requests.request(method, url, headers=headers, data=json.dumps(body))
