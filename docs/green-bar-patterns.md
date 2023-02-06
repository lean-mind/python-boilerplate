# Green bar patterns

The workflows are named "Green Bar Patterns" (the green bar being the indicator that your tests are still passing). These patterns help you to be working on the green path, or to return to it as soon as possible.

## Obvious implementation
This is the approach I used to follow almost exclusively: just solving the problem at hand, no matter how hard it is. But the obvious implementation often is not as obvious as it might seem.

I remember getting stuck a lot when trying to come up with a solution, even for a small problem, and I was subconsciously too proud to take small steps, and overestimated my abilities.

This approach also easily leads to problems when pairing, as the "driver" is hacking away on the red path, assuring that the solution is just around the corner, while the navigator is puzzled and doesn't want to interrupt the flow of the driver.

Sometimes you even have to throw everything away and need to start over, or the solution is only understood by the driver, because the navigator is not emotionally invested in the solution.

The lesson learned is that you should only follow this path if the implementation is absolutely trivial - as the name suggests, obvious. If you find yourself coding an obvious implementation, but fail to get your tests to pass, it's time to switch to one of the following approaches.

## Fake it (till you make it)
This approach is forcing you to work in very small increments, until you find a pattern or algorithm that solves your problem. When you start with a failing test, it's fine to (for example) just return a static value at first.

The idea is to get the test to pass as soon as possible. Once it is, you can refine the fake in the refactoring phase. You can always check if you are on the right way, just run your tests, they should always pass.

This approach is great if you already have an idea about a possible implementation, but can't quite see it through. The small increments slowly lead you towards your goal.

## Triangulation
In contrast to the "Fake it" approach, triangulation suggests adding more test cases in order to come up with a solution. This is helpful if you realise you are faking it, but NOT getting close to making it, if you have no idea how to implement the solution.

Having another test gives you another perspective and also gives you a security net - your implementation fulfills a constantly growing set of criteria. If you are not sure where to go with your implementation, triangulation is worth a try.

Once you feel more secure about your implementation idea, switch back to "Fake it" or "Obvious implementation" - but remember that your test code is just as valuable as your production code, and refactor your test code as rigorously as your production code.

