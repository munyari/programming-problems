class Pangram
  VERSION = 1

  def self.is_pangram? string
    string_arr = string.chars.reject { |char| !char.match /[a-zA-Z]/ }

    alpha = "abcdefghijklmnopqrstuvwxyz"
    string_arr.map(&:downcase).uniq.sort.join == alpha
  end
end
