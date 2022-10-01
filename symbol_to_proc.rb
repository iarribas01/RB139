=begin 
Investigate: what the & symbol does 
during method invocation
=end

# &:my_symbol invokes the Symbol#to_proc
# & OPERATOR
# puts [1, 2, 3, 4, 5].select(&:odd?)


# & operator tries to convert the object
# to a block. If passed a symbol, it will
# try to convert the symbol to a proc first,
# then a block


#=========================
# def my_method
#   yield(2)
# end

# a_proc = :to_s.to_proc          # explicitly call to_proc on the symbol
# p my_method(&a_proc)              # convert Proc into block, then pass block in. Returns "2"

#=========================
def my_method
  yield(2)
end

a_proc = Proc.new{|s| s.to_s}
something_else = "asdlajsd"
p my_method(&a_proc)
p my_method(&something_else)
