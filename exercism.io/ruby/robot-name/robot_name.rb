class Robot
  VERSION = 1

  attr_reader :name
  @@names = []

  def initialize
    reset
  end

  def generate_random_name
    name = (0..1).map { ('A'..'Z').to_a[rand(26)] }.join
    name += (0..2).map { ('0'..'9').to_a[rand(10)] }.join
  end

  def assign_name
    loop do
      @name = generate_random_name
      break unless @@names.include? @name
    end
  end

  def reset
    assign_name
    @@names << @name
  end
end
