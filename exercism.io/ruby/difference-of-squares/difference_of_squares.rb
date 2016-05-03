require "pry"
class Squares
  attr_reader :num
  private :num

  VERSION = 2

  def initialize(num)
    @num = num
  end

  def square_of_sum
    squared((num * (num + 1)) / 2)
  end

  def sum_of_squares
    sum_of_squares = (num * (num + 1) * (2 * num + 1))/6
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def squared(number)
    number * number
  end
end
