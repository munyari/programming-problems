goal = 600851475143

largest = -1
while goal > 1
  2.upto(Math.sqrt(goal).round) do |i|
    if goal % i == 0
      largest = i
      goal /= i
    end
  end
end

puts largest
