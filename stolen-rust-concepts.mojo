fn add(inout x: Int, borrowed y: Int):
    x += y

fn main():
    var a = 1
    let b = 2
    add(a, b)
    print(a)  # Prints 3