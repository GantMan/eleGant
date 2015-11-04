# Time for anonymous functions
# AKA lambdas

# Lambdas care about the number of parameters
def do_bidding(code)
  code.call(1, 2)
end

do_bidding(proc { |a, b, c| puts "I want #{a} and #{b} and #{c.class}" })
do_bidding(lambda { |a, b, c| puts "I want #{a} and #{b} and #{c.class}" })
# Also written as
# do_bidding(-> (a, b, c) { puts "I want #{a} and #{b} and #{c.class}" })

# => Give me a 1 and a 2 and a NilClass
# Argument Error

# Lambdas have diminutive returns

# Lambdas like methods - Procs like chunks of code
# lambdas are anonymous, ruby has method objects
