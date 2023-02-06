# Transformation Priority Premise (TPP)

Is a programming approach developed by Robert C. Martin (Uncle Bob) as a refinement to make the process of test-driven development (TDD) easier and more effective for a computer programmer.

## How to use the Transformations in Practice

Alan Ridlehoover clarifies that the Transformations help you pick which tests to write and in what order.

"The Transformations" can actually help us pick which tests we should write in what order. For example, if we decide to write a test that requires us to add an if statement to our code, that test requires the “unconditional –> if” transformation. Knowing that, we can try to think of other tests that rely solely on transformations higher up the list. The ultimate reward is that by writing our tests using transformation priority order, we should not ever get to a point where one test causes us to rewrite an entire method.

## The Transformations order

- ({} → nil) no code at all → code that employs nil
- (nil → constant)
- (constant → constant+) a simple constant to a more complex constant
- (constant → scalar) replacing a constant with a variable or an argument
- (statement → statements) adding more unconditional statements.
- (unconditional → if) splitting the execution path
- (scalar → array)
- (array → container)
- (statement → tail-recursion)
- (if → while)
- (statement → non-tail-recursion)
- (expression → function) replacing an expression with a function or algorithm
- (variable → assignment) replacing the value of a variable.
- (case) adding a case (or else) to an existing switch or if


