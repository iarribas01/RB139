# methods that return closures??

#=====================================
# returns a proc
def capitalize_proc
  Proc.new {|s| s.upcase}
end

# here, we have a proc object
# from the capitalize_proc method
# assigned to the parameter proc
def call_proc(proc)
  proc.call("hello")
end

# here, we have an implicit block
# converted from the unary & operator
# that is from the capitalize_proc method
def call_block
  yield("hello")
end

# here, we are invoking the method and
# passing the return value of capitalize
# proc. We first convert it to a block
# during method invocation, but then 
# convert it back to a proc as instructed
# in our method definition
def call_proc_and_block(&block)
  block.call("hello")
end


def call_symbol
  # proc.call("hello")
  yield("hello")
end

puts call_proc(capitalize_proc)
puts call_block(&capitalize_proc)
puts call_proc_and_block(&capitalize_proc)
puts call_symbol(&:capitalize_proc)