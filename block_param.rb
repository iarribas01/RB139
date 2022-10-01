# test explicit block param and no block arg given


def my_method(&explicit_block)
  p explicit_block
  explicit_block.call 
end

# my_method
my_method {"hi"}

=begin 
in conclusion, ruby will automatically set the block
to nil if no block given

despite one parameter defined for my_method, the method
will not throw an error if no arguments or no blocks given.
The & simply acts as a way to name our implicit block and
be able to reference it.

must be last param

=end