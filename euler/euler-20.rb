def fac n
  result = 1
  (1..n).each do |x|
    result *= x
  end
  result
end

def digital_sum n
  total = 0
  while n > 0
    total += n % 10
    n /= 10
  end
  total
end

p digital_sum fac 100
