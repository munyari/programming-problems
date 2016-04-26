require 'pry'

def simplify(poly)
  terms = poly.split(/([+-]?\d*[a-z]+)/).reject(&:empty?)
  # binding.pry
  coefficients = Hash.new(0)
  terms.each do |t|
    #get the variable part only
    variable = t[/[a-z]+$/].chars.sort.join
    if is_negative(t)
      coefficients[variable] -= coefficient(t[1..-1])
    else
      # TODO: This breaks if first term in the sequence
      coefficients[variable] += coefficient(t[1..-1])
    end
    # binding.pry
  end
  # sorted first lexicographically
  by_alpha = coefficients.sort_by { |var, n| var }
  by_len = by_alpha.sort_by { |var, n| var.length }
  result = ""
  by_len.each do |var, n|
    next if n == 0
    case n
    when 1
      coeff = ""
    when -1
      coeff = ""
    else
      coeff = n.to_s
    end
    result += "#{coeff}#{var}+"
  end
  result[0..-2]
end

def is_negative(term)
  term[0] == '-'
end

def coefficient(term)
  if term[/^[a-z]+$/]
    1
  else
    term[/\d+/].to_i
  end
end



puts simplify("dc+dcba")
puts simplify("-a+5ab+3a-c-2a")
puts simplify("2xy-yx") # failing test case
puts simplify("-a+5ab+3a-c-2a")
