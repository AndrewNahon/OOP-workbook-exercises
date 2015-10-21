#If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

#What would happen if I called the methods like shown below?

tv = Television.new   => creates a new instance of Television
tv.manufacturer       => returns an error. manufacturer isn't an instance method.
tv.model              => peforms method logic on tv object.

Television.manufacturer => performs the class method manufacturer
Television.model        => returns error. instance method cannot be called on class. 