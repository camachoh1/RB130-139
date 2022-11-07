# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }

# puts my_proc # outputs proc encoding meaning procs can be initialize usinf the keyword proc.

# puts my_proc.class # outputs proc class 

# my_proc.call # executes the block outputing "this is a ." because no element was passed in as argument, therefore |thing| evaluates to nil and due to the interpolation its turned into an empty space. This also shows that procs have a more leninent arity. Since they still are executed despite the fact that it did not received an argument. 

# my_proc.call('cat') # cat was passed in as argument to call which then was yielded to the block and assigned to |thing| which is interpolated in the block and oputput with the puts call.

# # Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." } # this seems like an alternative way to initialize a lambda. instead of calling the lambda method we use -> and instead of defining a block parameter for thing, we pass it as argument to ->(thing)

# puts my_lambda # outputs a Proc object. So lambdas are another way to initialize procs? lambdas are another type of Proc objects
# puts my_second_lambda # also initializes a Proc object.
# puts my_lambda.class # returns Proc class. lambdas are another type of proc objects.

# my_lambda.call('dog') # output this is a dog. meaninig similarly to procs receives an argument and assigned it to the block parameter and executed the block.

# # my_lambda.call # returns error, wrong number of arguments. Meaning lambdas have a more strict arity than Procs. (but why though? arent lambdas also proc objects? )

# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } # outputs uninitialized constant. So this means that Lambda is not a class. so what are lambdas then? 

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."} # here "this is a ." is output. Because the string 'seal' was not yielded to the block on line 28. Since blocks have low arity, the block is executed the |seal| block parameter returns nil which is transformed into an empty space by the string interpolation.

# block_method_1('seal') # here a jump error is returned because no block was passed into the method. The keyword yield is expecting an implicit block to be passed into the method during invocation since none is given we get a local jump error.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # here the method putputs "this is a turtle" because we passed in a block upon method invocation. The string 'turtle' is assigned to the animal parameter on line 36 and then passed into the block on line 37. The string will then be assigned to the block parameter |turtle| and added to the output with string interpolation.

block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end # here a second block parameter is added to the block. Since we only pass in one string during invocation, the second block parameter returns nil which is why the ouput is "this is a turtle and a ." the space is the nil value coverted into a space through string interpolation. another prove of block's low arity.

block_method_2('turtle') { puts "This is a #{animal}."} # here an error is ouput. this is because we are passing a value that is not initialized within the block at all. The block contains no parameters and the string "turtle" is not assigned to any parameters or variables inside the block. 

=begin 

Analysis

Based on the examples above, I noticed that both procs and blocks have a somewhat leninent arity unlike lambdas. Lambdas require a specific number of arguments in order to be executed while procs and blocks do not. They can still be executed regardless the number od arguments.

  Lambdas are types of Proc's. Techincally they are both `Proc` objects. An implicit block is a grouping of code, a type of closure, it is not an Object.

  Lambdas enforce the number of arguments passed to them. Implicit blocks and Procs do not enforce the number of arguments passed in. 
=end