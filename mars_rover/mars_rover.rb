class Rover

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end


  def move
      if @direction == "N"
        @y += 1
      elsif @direction == "E"
        @x += 1
      elsif @direction == "S"
        @y -= 1
      elsif @direction == "W"
        @x -= 1
      end
  end


  def turn_left
      if @direction == "N"
        @direction = "W"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "W"
        @direction = "S"
      end
  end

  def turn_right
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      end
  end

  puts "What are the dimensions of the plateau?"
  size = gets.chomp

  puts "What is my x coordinate?"
  @x = gets.chomp

  puts "What is my y coordinate?"
  @y = gets.chomp

  puts "What direction am i facing?"
  @direction = gets.chomp.upcase

  def read_instruct
      puts "What are my instructions? (L / R / M)"
      instructions = gets.chomp.upcase

      commands = instructions.split(" ")
      commands.each do |command|
        if command == "L"
          turn_left
        elsif command == "R"
          turn_right
        elsif command == "M"
          move
        end
      end
  end

end






alpha = Rover.new(0, 0, "N")
bravo = Rover.new(2, 2, "N")
charlie = Rover.new(4, 4, "N")


#
#
#
#   _ _ _ _ _ _ _ _ _
# 9|_|_|_|_|_|_|_|_|_|        N
# 8|_|_|_|_|_|_|_|_|_|      W   E
# 7|_|_|_|_|_|_|_|_|_|        S
# 6|_|_|_|_|_|_|_|_|_|
# 5|_|_|_|_|_|_|_|_|_|
# 4|_|_|_|_|_|_|_|_|_|
# 3|_|_|_|_|_|_|_|_|_|
# 2|_|_|_|_|_|_|_|_|_|
# 1|_|_|_|_|_|_|_|_|_|
# 0 1 2 3 4 5 6 7 8 9
