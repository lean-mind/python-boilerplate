def is_narcissistic(given_number: int) -> bool:
    digits = [int(n) for n in str(given_number)]
    calculated_digits = list(map(lambda d: pow(d, len(digits)), digits))
    return sum(calculated_digits) == given_number
