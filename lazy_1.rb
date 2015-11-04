# Passing code for others to fire

def lazy_fire(range, &block)
  sleep rand(range)
  block.call
end

lazy_fire(1..2) do
  p 'First Fire'
end

lazy_fire(3..5) do
  p 'Second Fire'
end
