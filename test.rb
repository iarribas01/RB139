def call_this
  yield(2)
end

# your code here
to_s = Proc.new{|item| item.to_i}
to_i = Proc.new{|item| item.to_s}

p call_this(&to_s) # => returns 2
p call_this(&to_i) # => returns "2"