# python is a scripting language created in 1991 by Guido van Rossum
# It is dynamically-typed and has extensive supporting libraries
# Would recommend!
#
# python script for accessing system time and generating a random number
import numpy as np
import time

# build a shoddy random number generator
def random():
    # The seed is the current time in whole seconds, and that choice has
    # two consequences worth knowing. Anyone who knows roughly when the
    # script ran can reproduce the number, so this is a demonstration,
    # not a source of secrets. And two calls inside the same second get
    # the same seed and return the same value, which is why this file
    # calls the function exactly once.
    seed = int(time.time())
    rng = np.random.default_rng(seed)
    return rng.random()

# call the function and print the pseudo random number it returns
print(random())
