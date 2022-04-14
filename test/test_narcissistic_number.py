from assertpy import assert_that
from unittest import TestCase

from src.narcissistic_number import is_narcissistic


class TestIsNarcissisticNumber(TestCase):
    def test_is_narcissistic_number_returns_false_given_not_a_narcissistic_one(self):
        assert_that(is_narcissistic(150)).is_false()

    def test_is_narcissistic_returns_true_given_zero(self):
        assert_that(is_narcissistic(0)).is_true()

    def test_is_narcissistic_number_returns_true_given_narcissistic_one(self):
        assert_that(is_narcissistic(153)).is_true()
