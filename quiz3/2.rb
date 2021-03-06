In the last question we had the following classes:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end
If we call Hello.hi we get an error message. How would you fix this?

You could fix this by changing the hi method to a class method. class self.hi