example_method = -> (x, y, z) { x + y + z }
# curring example_method
curry_method = example_method.curry

test_0 = curry_method.call(10) # return lambda where x = 10, because y and z - undefined
puts test_0.call(10, 10) # return 30, because x = 10
test_1 = test_0.call(5) # return lambda where x = 10 and y = 5, because z - undefined
puts test_1.call(5) # return 20, because x = 10 and y = 5