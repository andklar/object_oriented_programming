require_relative "directions"

class Rover
  attr_reader :direction, :position

  def initialize(current_position=[0,0], current_direction)
    @direction = current_direction
    @position = current_position
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move
    @position = @position.move
  end


end





  # def read_instruct
  #     instructions = gets.chomp.upcase
  #     commands = instructions.split('')
  #     commands.each do |command|
  #       if command == 'L'
  #         turn_left
  #       elsif command == 'R'
  #         turn_right
  #       elsif command == 'M'
  #         move
  #       end
  #     end
