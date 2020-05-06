# example 1
example_method_0 = -> (x, y, z) { x + y + z }
# curring example_method
curry_method_0 = example_method_0.curry

test_0 = curry_method_0.call(10) # return lambda where x = 10, because y and z - undefined
puts test_0.call(10, 10) # return 30, because x = 10
test_1 = test_0.call(5) # return lambda where x = 10 and y = 5, because z - undefined
puts test_1.call(5) # return 20, because x = 10 and y = 5

# example 2
example_method_1 = -> (func, x, y, z) { func.call(x, y, z) }
sum = -> (x, y, z) { x + y + z }

curry_method_1 = example_method_1.curry
test_2 = curry_method_1.call(sum)
puts test_2.call(1, 1, 1)
