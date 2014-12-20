module Radio
  def radio
    puts "Radio is turned on"
  end
end


class Vehicle
  @@number_of_vehicles = 0 

  attr_accessor :color
  attr_reader :year, :model 

  def initialize(year, color, model)
    @@number_of_vehicles += 1
    @year = year
    @color = color
    @model = model
    @speed = 0  
  end

  def self.petrol_mileage(litres, kms)
    puts "#{kms/ litres} kms per litre of petrol"
  end

  def accelerate(odometer)
    @speed += odometer
    puts "Speed accelerated to #{@speed}"
  end

  def brake(odometer)
    @speed -= odometer
    puts "Speed decelerated to #{@speed}"
  end

  def current_speed
    puts "Speed is #{@speed}"
  end

  def off
    @speed = 0
    puts "Parked"
  end

  def self.vehicle_number
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def change_color(paint)
    self.color = paint
    puts "Vehicle painted to #{color}"
  end

  def to_s
    puts "Year: #{year}, Model: #{model}, Color: #{color}"
  end

  def age
   puts "The #{model} is #{years_old} years old." 
  end

  private 

  def years_old
    current_year = Time.now.year
    year_of_vehicle = self.year
    age_of_vehicle_in_years = current_year - year_of_vehicle   
  end
end


class MyCar < Vehicle
  include Radio 
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Radio
  NUMBER_OF_DOORS = 2 
end


corolla = MyCar.new(2010, 'white', 'sport')

porsche= MyCar.new(2014, 'blue', '911')

corolla.accelerate(10)

corolla.accelerate(200)

corolla.brake(60)

corolla.accelerate(20)

corolla.current_speed

corolla.brake(170)

corolla.off

corolla.change_color("red")

MyCar.petrol_mileage(13, 351)

puts corolla.age

puts corolla.radio

mack = MyTruck.new(2011, 'grey', 'tough')

mack.radio

puts MyTruck.ancestors

puts Vehicle.vehicle_number

MyTruck.petrol_mileage(25, 100)

puts mack

mack.change_color('orange')