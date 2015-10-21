
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car

  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck

  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

#you can include the module Speed in both Car and Truck classes. 
#to check that they have the go_fast method instantiate a Car and Truck and clal the method on them. 

ranger = Truck.new
prius = Car.new

ranger.go_fast
prius.go_fast