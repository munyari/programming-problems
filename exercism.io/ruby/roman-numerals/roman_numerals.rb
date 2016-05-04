require "pry"
class Fixnum
  VERSION = 1

  def to_roman
    @@numerals = { 1 => "I", 5=> "V", 10=> "X", 50=> "L", 100=> "C",
                 500 => "D", 1000 => "M" }
    romanize(self.to_s)
  end

  def romanize(str)
    roman = ""
    str.chars.map(&:to_i).each_with_index do |digit, index|
      place_val = 10**(str.size - 1 - index)
      gte_five = digit >= 5
      mod_five = digit % 5
      numeral_val = @@numerals[place_val]

      case
      when mod_five == 4
        roman += "#{numeral_val}"
        roman += "#{@@numerals[place_val * (gte_five ? 10 : 5)]}"
      when digit != 0
        roman += "#{(gte_five ? @@numerals[place_val * 5] : "")}"
        roman += "#{numeral_val * (mod_five)}"
      end
    end
    roman
  end
end

