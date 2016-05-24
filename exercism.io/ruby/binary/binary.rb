class Binary
  VERSION = 2

  def initialize(bin)
    raise ArgumentError unless bin =~ /^[01]+$/
    @bin = bin
  end

  def to_decimal
    dec = 0
    @bin.reverse.chars.each_with_index do |digit, index|
      dec += digit.to_i * (2**index)
    end
    dec
  end
end
