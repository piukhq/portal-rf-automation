

class EnvironmentDetails:
    def __init__(self, base_url):
        self.base_url = base_url


DEV = EnvironmentDetails(
    base_url="https://portal.dev.gb.bink.com"
)
STAGING = EnvironmentDetails(
    base_url="https://portal.staging.gb.bink.com",
)
