LIMIT = 4_000_000
prev = 1
current = 1
sum = 0
while current <= LIMIT
  sum += current if current % 2 == 0
  old_prev = prev
  prev = current
  current += old_prev
end
puts sum
