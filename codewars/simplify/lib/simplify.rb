require 'pry'

def simplify(poly)
  terms = split_polynomial(poly)
  coefficients = get_term_coeff(terms)
  # sorted by length, and then alphabetically
  sorted = sort_by_len_alpha(coefficients)
  join_polynomial(sorted)
end

def get_term_coeff(terms)
  coefficients = Hash.new(0)
  terms.each do |term|
    variable = extract_variable(term)
    coefficients[variable] += coefficient(term)
  end
  coefficients
end

def extract_variable(term)
  term[/[a-z]+$/].chars.sort.join
end

def join_polynomial(coefficients)
  result = ""
  coefficients.each do |var, n|
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
  end
  result = result[1..-1] if result[0] == '+'
  result.gsub(/[-]+/, "-")
end

def sort_by_len_alpha(coefficients)
  coefficients.sort_by { |var, n| [var.length, var] }.reject { |var, n| n == 0 }
end

def split_polynomial(poly)
  poly.split(/([+-]?\d*[a-z]+)/).reject(&:empty?)
end

def is_negative(term)
  term[0] == '-'
end

def coefficient(term)
  return -1 * coefficient(term[1..-1]) if is_negative(term)
  if term[/^[+]?[a-z]+$/]
    1
  else
    term[/\d+/].to_i
  end
end
