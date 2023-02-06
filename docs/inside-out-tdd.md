# Inside-Out TDD

The classical school is distinguished by its focus on the verification of the state of the objects, which is why it is essential that the test context must always consist of "real objects", previously configured. For the correct generation of these contexts, classes can be created to help us, for example through the so-called "MotherObjects" or implementations of the "Factory" pattern.

The prior existence of these "real objects" implies that the design of our solution will gradually grow from the base to the final functionality. Hence the nickname of Inside-out technique.

Another of the most distinctive features of this approach is triangulation. The concept is based on obtaining 2 or more similar cases before proceeding with the implementation of a generic solution.

Let's suppose that, in an application we are developing, we need to deal with multiple information providers, all of them similar, although each of them has a series of particularities. The steps would be as follows:

- The first step would be to perform the concrete implementation for a single provider, obviating the fact that there are more providers.
- The second step would be to perform the implementation for the second supplier.
- Finally, we would perform the generalization of the solution for the N cases since in the two implemented cases it should be possible to observe points where generalizations can really be established. In case we do not observe enough similarities, we can always continue to implement solutions until similarities are observed.
