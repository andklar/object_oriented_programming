module Directions

  def move(current_position)
    case
      when @direction == 'N'
        x = Integer(currentposition[0])
        y = Integer(currentposition[1]) + 1

        [x, y]

      when @direction == 'E'
        x = Integer(currentposition[0]) + 1
        y = Integer(currentposition[1])

        [x, y]

      when @direction == 'S'
        x = Integer(currentposition[0])
        y = Integer(currentposition[1]) - 1

        [x, y]

      when @direction == 'W'
        x = Integer(currentposition[0]) - 1
        y = Integer(currentposition[1])

        [x, y]

    end
  end


  def turn_left
    case
      when @direction == 'N'
        @direction = 'W'
      when @direction == 'W'
        @direction = 'S'
      when @direction == 'S'
        @direction = 'E'
      when @direction == 'E'
        @direction = 'N'
    end
  end

  def turn_right
    case
      when @direction == 'N'
        @direction = 'E'
      when @direction == 'E'
        @direction = 'S'
      when @direction == 'S'
        @direction = 'W'
      when @direction == 'W'
        @direction = 'N'
    end
  end

end

#   puts "What are the dimensions of the plateau?"
#   size = [gets.chomp]
#
#   puts "What is my x coordinate?"
#     if gets.chomp == 0..size[0]
#       @x = gets.chomp
#     end
#     puts "x = #{@x}"
#
#   puts "What is my y coordinate?"
#     if gets.chomp == 0..size[1]
#       @y = gets.chomp
#     end
#     puts "y = #{@y}"
#
#   puts "What direction am i facing?"
#     if gets.chomp.upcase.string?
#       @direction = gets.chomp.upcase
#     end
#     puts "You are facing #{@direction}"
#
# end
#
#
# alpha = Rover.new(0, 0, 'N')
# bravo = Rover.new(2, 2, 'N')
# charlie = Rover.new(4, 4, 'N')
#
# rover_array = ['alpha', 'bravo', 'charlie']
#
#
#
#
#
#
#
#
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
