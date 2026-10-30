# python is a scripting language created in 1991 by Guido van Rossum
# It is dynamically-typed and has extensive supporting libraries
# Would recommend!
#
# python script for accessing system time and generating a random number
import numpy as np
import time

# build a shoddy random number generator
def random():
    # I seed from the current time in whole seconds, and I keep two
    # consequences in mind. Anyone who knows roughly when I ran this
    # can reproduce the number, so I treat it as a demonstration and
    # never as a source of secrets. Two calls inside the same second
    # also get the same seed and return the same value, so I call this
    # function exactly once below.
    seed = int(time.time())
    rng = np.random.default_rng(seed)
    return rng.random()

# call the function and print the pseudo random number it returns
print(random())
