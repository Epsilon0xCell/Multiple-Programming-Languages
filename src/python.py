# python is a scripting language created in 1991 by Guido van Rossum
# It is dynamically-typed and has extensive supporting libraries
# Would recommend!
#
# python script for accessing system time and generating a random number
import numpy as np
import time

# build a shoddy random number generator
def random():
    seed = int(time.time())
    rng = np.random.default_rng(seed)
    return rng.random()

# call the function and print the pseudo random number it returns
print(random())
