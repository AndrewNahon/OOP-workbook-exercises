#1. You are given the following code:

class Oracle
  def predict_the_future
    "You will " + self.choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end
#What is the result of calling

oracle = Oracle.new
puts oracle.predict_the_future

#It will return an error. You would have to modify the predict_the_future method using self.choices.sample