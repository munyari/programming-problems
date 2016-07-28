defmodule Bob do
  def hey(input) do
    cond do
        input |> String.trim |> empty? -> "Fine. Be that way!"
        input |> String.ends_with?("?") -> "Sure."
        uppercase?(input) -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end

  def uppercase?(str) do
    letters_only = Regex.scan(~r{[^0-9,.]}, str) |> to_string |> String.trim
    !empty?(letters_only) && String.upcase(letters_only) == letters_only
  end

  def empty?(str) do
    String.length(str) == 0
  end
end

