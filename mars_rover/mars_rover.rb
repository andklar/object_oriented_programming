class Rover

attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction(instructions)
    instructions.each do |i|
      if i == "L" || i == "R"
        turn(i)
      elsif i == "M"
        move
      end
    end
    p "#{x} #{y} #{direction}"
  end

  def move
    if direction == "N"
      @y += 1
    elsif direction == "S"
      @y -= 1
    elsif direction == "E"
      @x += 1
    elsif direction == "W"
      @x -= 1
    else
      "invalid direction given"
    end
  end

  def turn(input)
    if (direction == "W" && input == "R") || (direction == "E" && input == "L")
      @direction = "N"
    elsif (direction == "N" && input == "R") || (direction == "S" && input == "L")
      @direction = "E"
    elsif (direction == "E" && input == "R") || (direction == "W" && input == "L")
      @direction = "S"
    elsif (direction == "S" && input == "R") || (direction == "N" && input == "L")
      @direction = "W"
    else
      "invalid input"
    end
  end

end


puts "What is the plateau size?"
plateau_size = gets.chomp.split(" ")

puts "What is the starting position and orientation for the first rover?"
start_position1 = gets.chomp.split(" ")

puts "What are the instructions for the first rover? (L/R/M)"
moves1 = gets.chomp.split("")

puts "What is the starting position and orientation for the second rover?"
start_position2 = gets.chomp.split(" ")

puts "What are the instructions for the second rover? (L/R/M)"
moves2 = gets.chomp.split("")

rover_1 = Rover.new(start_position1[0].to_i, start_position1[1].to_i, start_position1[2])
rover_2 = Rover.new(start_position2[0].to_i, start_position2[1].to_i, start_position2[2])
rover_1.read_instruction(moves1)
rover_2.read_instruction(moves2)
