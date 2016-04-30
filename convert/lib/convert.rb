require "pry"

def convert(input, source, target)
  acc = 0
  # binding.pry
  input.chars.each_with_index do |char, i|
    acc += source.index(input[i]) * (source.length ** ((input.length - 1) - i))
    # binding.pry
  end
  # binding.pry
  res = ""

  # binding.pry
  pow_was_zero = false
  until acc == 0 do
    # highest power less than or equal to you
    pow = Math.log(acc, target.length).to_i
    pow_was_zero = pow == 0
    # how many times does that go in
    coeff = acc / (target.length ** pow)
    acc -= coeff * (target.length ** pow)
    res += "#{target[coeff]}"
    # binding.pry
  end
  res += "#{target[0]}" unless pow_was_zero
  res
  # binding.pry
end

hex='0123456789abcdef'
allow='abcdefghijklmnopqrstuvwxyz'
convert("hello", allow, hex) #320048
