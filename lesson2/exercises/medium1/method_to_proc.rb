

# Replace the two `method_name` placeholders with actual method calls
def convert_to_base_8(n)
  n.to_s(8).to_i # to_s with a number argument transforms the integer in a number based off the argument. In this case, we are transforming the integer into an octal based number.
end

# Replace `argument` with the correct argument below
# `method` is `Object#method`, not a placeholder
base8_proc = method(:convert_to_base_8).to_proc # #method can receive a method passed in as argument, it will then transform this method in a method object. Method objects act as closures in obj's object instance, so instance variables and the value of self remain available.

# We'll need a Proc object to make this code work
# Replace `a_proc` with the correct object
p [8, 10, 12, 14, 16, 33].map(&base8_proc) # using & by itseld turns the proc created on line 10 into a block which then is passed into map as implicit argument returning => [10,12,14,16,20,41]



