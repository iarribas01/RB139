# converting implicit to explicit

# def calculation(a, b, &block) # &block is an explicit (named) parameter
#   block.call(a, b)
#  end
 
#  puts calculation(5, 5) { |a, b| a + b } # this is an implicit block
#                                          # -- it is nameless and is not 
#                                          # passed as an explicit parameter.

#==================================================

# explicit to implicit


# def calculation(a, b)
#   yield(a, b) # yield calls an implicit (unnamed) block 
# end
 
# addition = lambda {|x, y| x + y}
# puts calculation(5, 5, &addition) # like our last example, &addition is 
#                                   # an explicit (named) block 
#                                   # -- but `yield` can still call it!


#==================================================

# def some_method(arg)
#   yield(arg)
# end

# some_method("hello") {|arg| puts arg.upcase}

# => Output: HELLO
#===================================================

# def some_method(arg, block)
#   block.call(arg)
# end

# some_closure = lambda {|arg| puts arg.reverse}
# some_method("hello", &some_closure)


# => ArgumentError, 1 for 2
#===================================================

# def some_method(arg, &block)
#   block.call(arg)
# end

# some_method("hello") {|arg| puts arg}

# ouput => hello
#===================================================

# def some_method(arg, block)
#   block.call(arg)
# end

# some_closure = Proc.new {|arg| puts arg}
# some_method("hello", some_closure)

# => ouptut: hello


#===================================================


def some_method(a, b)
end
proc = Proc.new {|arg| puts arg}
some_method("hello", proc)

