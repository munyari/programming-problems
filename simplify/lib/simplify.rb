require 'pry'

def simplify(poly)
  terms = poly.split(/([+-]?\d*[a-z]+)/).reject(&:empty?)
  # binding.pry
  coefficients = Hash.new(0)
  terms.each do |t|
    #get the variable part only
    variable = t[/[a-z]+$/].chars.sort.join
    if is_negative(t)
      coefficients[variable] -= coefficient(t)
    else
      # TODO: This breaks if first term in the sequence
      coefficients[variable] += coefficient(t)
    end
    # binding.pry
  end
  # sorted first lexicographically
  by_alpha = coefficients.sort_by { |var, n| var }
  by_len = by_alpha.sort_by { |var, n| var.length }
  result = ""
  # binding.pry
  by_len.each do |var, n|
    next if n == 0
    case
    when n == 1
      coeff = "+"
    when n == -1
      coeff = "-"
    when n > 1
      coeff = "+#{n.to_s}"
    when n < 1
      coeff = "-#{n.to_s}"
    end
    result += "#{coeff}#{var}"
    # binding.pry
  end
  result = result[1..-1] if result[0] == '+'
  result
end

def is_negative(term)
  term[0] == '-'
end

def coefficient(term)
  if term[/^[+-]?[a-z]+$/]
    1
  else
    term[/\d+/].to_i
  end
end

simplify("-c+5ab")
