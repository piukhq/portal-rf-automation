import pytest
from pytest_bdd import given, when, then
import logging


# Hooks
def pytest_bdd_step_error(request, feature, scenario, step, step_func, step_func_args, exception):
    """This function will log the failed BDD-Step at the end of logs"""
    logging.info(f"Step failed: {step}")


def pytest_bdd_after_scenario(request, feature, scenario):
    """Called after scenario is executed (even if one of steps has failed)
    So the scheme_account will be deleted always and make sure the test data is ready"""


