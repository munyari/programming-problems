module Year
  VERSION = 1
  def leap?(year)
    year % 400 == 0 || year % 4 == 0 && year % 100 != 0
  end
end

Year.extend(Year)
