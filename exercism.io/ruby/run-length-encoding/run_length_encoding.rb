require 'pry'

class RunLengthEncoding
  VERSION = 1

  def self.encode(str)
    result = ""
    count = 1
    (0...(str.size - 1)).each do |i|
      if str.chars[i] == str.chars[i+1]
        count+=1
      else
        result += "#{count > 1 ? count : ""}#{str.chars[i]}"
        count=1
      end
    end
    result+="#{count > 1 ? count : ""}#{str.chars[str.size - 1]}"
  end

  def self.decode(str)
    str_arr = str.chars
    result = ""
    until str_arr.empty?
      numeric_prefix = str_arr.take_while { |x| x =~ /\d/ }.join
      str_arr = str_arr.drop_while { |x| x =~ /\d/ }
      numeric_prefix = numeric_prefix.empty? ? 1 : numeric_prefix.to_i
      result += str_arr[0] * numeric_prefix
      str_arr = str_arr[1..-1]
    end
    result
  end
end
