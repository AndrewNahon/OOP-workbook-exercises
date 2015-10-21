#If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

#Explain what the @@cats_count variable does and how it works. What code would you need to write to test your theory?

#The @@cats_count variable keeps track of the number of instances of the Cat class.
#To demonstrate this, use this code.

puts Cat.cats_count

Cat.new("Siamese")

puts Cat.cats_count