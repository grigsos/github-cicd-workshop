from bad_code import basic_math


def test_math_that_you_will_be_doing_at_work(capsys):
    test_variable = basic_math()
    assert test_variable == 5
