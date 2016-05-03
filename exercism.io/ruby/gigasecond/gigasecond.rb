class Gigasecond
  VERSION = 1

  def self.from(timestamp)
    timestamp + 10**9
  end
end
