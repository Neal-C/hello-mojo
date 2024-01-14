# Simple python program to test interop with Mojo.
# This file is imported from hello_interop.mojo.

import check_mod

check_mod.install_if_missing("numpy")
import numpy as np


def test_interop_func():
    print("I'm a python file called by a mojo file, flexing a numpy lib ")
    a = np.array([1, 2, 3])
    print(" print a numpy array: ", a)


if __name__ == "__main__":
    from timeit import timeit

    print(timeit(lambda: test_interop_func(), number=1))