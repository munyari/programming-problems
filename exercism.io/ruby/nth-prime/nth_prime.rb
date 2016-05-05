require "pry"

class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    primes[n-1]
  end

  def self.primes
    top = 150_000
    sieve = (2..top).to_a
    (2..Math.sqrt(top)).each do |i|
      sieve.delete_if { |j| j % i == 0 && i != j }
    end
    sieve
  end
end

