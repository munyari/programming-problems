LIMIT = 2_000_000

prime_list = Array.new(LIMIT+1, true)
prime_list[0] = false
prime_list[1] = false

2.upto(Math.sqrt(LIMIT).round) do |i|
  next unless prime_list[i]
  j = i * i
  while j <= LIMIT
    prime_list[j] = false
    j += i
  end
end

sum = 0
prime_list.each_with_index { |x, i| sum += i if x }
puts sum
