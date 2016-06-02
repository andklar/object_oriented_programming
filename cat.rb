class Cat

attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end


end


pablo = Cat.new("Pablo", "Enchiladas", 11)
steve = Cat.new("Steve", "Fish", 23)

puts pablo
