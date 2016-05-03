class Sieve
  attr_reader :num
  private :num

  def initialize(num)
    @num = num
  end

  def primes
    sieve = (2..num).to_a
    (2..Math.sqrt(num)).each do |i|
      sieve.delete_if { |j| j % i == 0 && i != j }
    end
    sieve
  end
end
