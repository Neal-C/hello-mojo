from python.python import Python


def main():
    print("Mojo file calling python modules ")
    for x in range(9, 0, -3):
        print(x)
    Python.add_to_path(".")
    Python.add_to_path("./mojo-interop.py")
    let test_module = Python.import_module("mojo-interop")
    test_module.test_interop_func()