class Bob
  def hey(text)
    letters_only = text.scan(/[A-Za-z]/)
    letters_up = letters_only.map(&:upcase)

    case
    when text.match(/^\s+$/) || text.empty?
      "Fine. Be that way!"
    when letters_only == letters_up && !letters_only.empty?
      "Whoa, chill out!"
    when text[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end
