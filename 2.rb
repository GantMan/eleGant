# Monkey-patch array
class Array
  def do_and_print!
    each_with_index do |n, i|
      self[i] = yield(n)
      p self[i]
    end
  end
end

array = [1, 2, 3, 4]

array.do_and_print! do |n|
  n * 5
end

p array

# => [5, 10, 15, 20]
