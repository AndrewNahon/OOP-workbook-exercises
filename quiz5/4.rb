#The designers of the vehicle management system now want to make an adjustment for how the range of vehicles 
#is calculated. 
#For the seaborne vehicles, due to prevailing ocean currents, they want to add an additional 10km of range even 
#if the vehicle is out of fuel.
#Alter the code related to vehicles so that the range for autos and motorcycles is still calculated as before, 
#but for catamarans and motorboats, the range method will return an additional 10km.

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency
  
  def range
    @fuel_capacity * @fuel_efficiency
  end

end

class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with 
    super([20,20], 80, 8.0)
  end
end

class Boat
  include moveable

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.propeller_count= num_propellers
    self.hull_count= num_hulls
    self.fuel_capacity= liters_of_fuel_capacity
    self.fuel_efficiency= km_traveled_per_liter
  end

  def range
    normal_range = super
    normal_range + 10
  end
  
end

class Catamaran < Boat
  include Moveable

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_capacity= liters_of_fuel_capacity
    self.fuel_efficiency= km_traveled_per_liter
  end
end

class Motorboat < Boat
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end