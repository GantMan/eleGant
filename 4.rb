# Monkey-patch array
class Array
  def do_and_print!(step1, step2)
    each_with_index do |n, i|
      self[i] = step1.call(n)
      p self[i]
      p ' Performing Step 1 '.center(30, '~')
      self[i] = step2.call(self[i])
      p self[i]
      p ' Performing Step 2 '.center(30, '~')
    end
  end
end

array = [1, 2, 3, 4]

# Sometimes written as `Proc.new` instead of `proc`
step1 = proc do |n|
  n * 5
end

step2 = proc do |n|
  n * 7
end

array.do_and_print!(step1, step2)

p array

# => [5, 10, 15, 20]
