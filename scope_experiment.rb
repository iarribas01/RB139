=begin 
Space to explore nuances of the scoping
rules with blocks and closures.
=end


#==============================================

# def call_me(some_code)
#   some_code.call
# end

# name = "Robert"
# chunk_of_code = Proc.new {puts "hi #{name}"}
# name = "Ciaran"

# call_me(chunk_of_code)

# hi Ciaran

#==============================================


# def call_me(some_code)
#   some_code.call 
# end

# chunk_of_code = Proc.new {puts "hi #{name}"}
# name = "Ciaran"

# call_me(chunk_of_code)

# NameError

#==============================================

# def call_me
#   yield
# end

# name = "Ciaran"

# call_me {puts "hi #{name}"}

# name = "Robert"

# hi Ciaran
#==============================================

def call_me
  yield
end

call_me {puts "hi #{name}"}

name = "Robert"

#NameError