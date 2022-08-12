import logging
import json
from faker import Faker


class Plans:
    @staticmethod
    def add_plan():
        faker = Faker()
        payload = {
            "name": "PortalTestPlan" + faker.number(),
            "icon_url": "null",
            "slug": "PortalTestSlug" + faker.number(),
            "plan_id": faker.number()
        }
        return payload
