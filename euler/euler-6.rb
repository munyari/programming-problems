# sum of squares = n(n+1)(2n+1)/6
# square of sums = (n(n+1)/2)^2
#
def square(n)
  n * n
end

def square_of_sums(n)
  square(n*(n+1)/2)
end

def sum_of_squares(n)
  (n * (n+1) * (2*n+1)) / 6
end

n = 100
puts square_of_sums(n) - sum_of_squares(n)
