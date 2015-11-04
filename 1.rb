array = [1, 2, 3, 4]

array.collect! do |n|
  n * 5
end

p array

# => [5, 10, 15, 20]
