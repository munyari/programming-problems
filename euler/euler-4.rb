def palindrome_num?(n)
  n_str = n.to_s
  n_str == n_str.reverse
end

max = -1
999.downto(900).each do |i|
  i.downto(900).each do |j|
    prod = i*j
    max = prod if prod > max && palindrome_num?(prod)
  end
end
puts max
