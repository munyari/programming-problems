module Grains
  def self.square(num)
    2 ** (num - 1)
  end

  def self.total
    (1..64).map { |num| square(num) }.reduce(:+)
  end
end
