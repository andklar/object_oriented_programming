class Rover

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  # def read_instruct
  #
  # end

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

  def read_instruct
      command = "MMMMMRMRMMMMM"
      command.split('')
    end

end



# puts "What is the x dimension of the plateau?"
# gets.chomp
#
# puts "What is the y dimension of the plateau?"
# gets.chomp
#
# puts "What is my x coordinate?"
# gets.chomp
#
# puts "What is my y coordinate?"
# gets.chomp
#
# puts "What direction am i facing?"
# gets.chomp.upcase
#
# puts "Should I turn left (L), right (R)"
# gets.chomp.upcase
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
