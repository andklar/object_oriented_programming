class Cat

attr_accessor :name, :preferred_food, :meal_time


  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    @meal_time%12
  end

  def meow
    if @meal_time > 12
      puts "My name is #{name} and i eat #{preferred_food} at #{meal_time%12}"
    else
      puts "My name is #{name} and i eat #{preferred_food} at #{meal_time%12}"
    end
  end

end


pablo = Cat.new("Pablo", "enchiladas", 11)
steve = Cat.new("Steve", "fish", 23)

puts pablo.meow
puts steve.meow
