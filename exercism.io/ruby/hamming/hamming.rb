class Hamming
  VERSION = 1
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    dist = 0
    str1.chars.each_with_index do |c, i|
      if c != str2[i]
        dist += 1
      end
    end
    dist
  end
end
