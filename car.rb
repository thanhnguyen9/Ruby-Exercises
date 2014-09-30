class Car

  attr_accessor :fuel, :distance

  def initialize
    @fuel = 10
    @distance = 0
    puts "the initialize method is running automatically"
  end

  def get_info
    p "I'm a car! I've driven 20 miles and 5 gallons of gas left"
  end

  def drive(mile)
    @distance += mile
    @fuel -= mile/20.to_f
  end

  def status
    if @fuel < 0
      p "You are out of gas"
    else
      p "I've being driven #{@distance} miles and have #{@fuel} gallons left."
    end
  end

  def fuel_up
    a = 10 - @fuel
    b = a * 3.50
    p "You need to fill #{a} gallons and it cost #{b} dollars"
  end


end

cara = Car.new
cara.drive(10)
cara.drive(15)

cara.status
cara.fuel_up
