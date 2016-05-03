class Complement
  VERSION = 3

  def self.of_dna(strand)
    complements = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }

    strand.each_char do
      |char| raise ArgumentError unless complements.keys.include? char
    end

    strand.chars.map { |x| complements[x] }.join
  end
end
