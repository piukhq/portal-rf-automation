from pytest_bdd import scenario, given, when, then, parser


@given("I am a Portal app user")
def step_impl():
    raise NotImplementedError(u'STEP: Given I am a Portal app user')


@when(parser.parse("I perform POST request to create a new plan by passing unique {plan_name},{slug}"))
def step_impl():
    print("test")


@given("I perform GET request to verify the created plan")
def step_impl():
    print("test")


@then("I perform a DELETE request to delete the plan")
def step_impl():
    print("test")
