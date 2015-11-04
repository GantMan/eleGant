def lazy_fire(range, &block)
  sleep_time = rand(range)
  sleep sleep_time
  block.call(sleep_time)
end

lazy_fire(1..2) do
  p 'First Fire'
end

lazy_fire(3..5) do |t|
  p "Second Fire after delay of #{t}"
end
