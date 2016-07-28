defmodule Bob do
  def hey(input) do
    cond do
        empty?(input) -> "Fine. Be that way!"
        question?(input) -> "Sure."
        uppercase?(input) -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end

  def uppercase?(str) do
    letters_only = Regex.scan(~r{[^0-9,.]}, str) |> to_string
    !empty?(letters_only) && String.upcase(letters_only) == letters_only
  end

  def question?(str) do
    String.at(str, -1) == "?"
  end

  def empty?(str) do
    to_charlist(str) |> Enum.empty?
      || String.match?(str, ~r{^\s+$})
  end
end

