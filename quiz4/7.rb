class Light
  attr_accessor :brightness, :color


  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.light_information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

def self.information would read better when the method is actually called. Light.information. 