fn repeat[count: Int](msg: String):
    @unroll
    for i in range(count):
        print(msg)

# (The @unroll directive shown here unrolls loops at compile time. The directive only works if the loop limits are compile-time constants.)