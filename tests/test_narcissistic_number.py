from unittest import TestCase

from assertpy import assert_that

from src.narcissistic_number import is_narcissistic


class TestIsNarcissisticNumber(TestCase):
    def test_is_narcissistic_if_the_sum_of_its_digits_to_the_nth_power_equal_the_original_number(
        self,
    ):
        assert_that(is_narcissistic(150)).is_false()
        assert_that(is_narcissistic(0)).is_true()
        assert_that(is_narcissistic(153)).is_true()

    def test_narcissistic_numbers_should_be_positive(self):
        assert_that(is_narcissistic).raises(ValueError).when_called_with(-1)
