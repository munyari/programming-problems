def convert(input, source, target)
  in_as_dec = convert_input_to_dec(input, source)
  convert_dec_to_target(in_as_dec, target)
end

def convert_input_to_dec(input, source)
  acc = 0
  input.chars.each_with_index do |char, index|
    acc += source.index(input[index]) * (source.length ** ((input.length - 1) - index))
  end
  acc
end

def convert_dec_to_target(input, target)
  res = ""
  target_base = target.length
  if input != 0
    # highest power less than or equal to you
    highest_pow = Math.log(input, target_base).to_i
    pow = highest_pow
    until pow < 0 do
      place_val = input / (target_base ** pow)
      input -= place_val * (target_base ** pow)
      res += "#{target[place_val]}"
      pow -= 1
    end
    res
  else
    target[0]
  end
end
