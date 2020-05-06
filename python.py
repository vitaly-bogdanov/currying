# example 1
def curry_method(x):
    return lambda y: lambda z: x + y + z

test_0 = curry_method(1)(1) # return lambda

print(test_0(1)) # return 3