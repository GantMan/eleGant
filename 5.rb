# Monkey-patch array
class Array
  def do_and_print!(*steps)
    each_with_index do |_n, i|
      steps.each_with_index do |step, step_number|
        self[i] = step.call(self[i])
        p self[i]
        p " Performing Step #{step_number + 1} ".center(30, '~')
      end
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

step3 = proc do |n|
  n * 2
end

array.do_and_print!(step1, step2, step3)

p array

# => [5, 10, 15, 20]
