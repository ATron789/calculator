require 'pry'
class Calculator

  attr_accessor :first_input, :second_input, :ops

  def intialize (first_input, second_input, ops)

    @first_input = first_input
    @second_input = second_input
    @ops = ops

  end

  def calculate
    case ops
    when 'sum'
      return @first_input + @second_input
    when 'min'
      return  @first_input - @second_input
    when 'tim'
      return  @first_input * @second_input
    when 'div'
      return  @first_input / @second_input
    end
  end

end





#
#   def operation
#     case @ops
    when 'sum'
      puts @result = @first_input + @second_input
    when 'min'
      puts @result = @first_input - @second_input
    when 'tim'
      puts @result =  @first_input * @second_input
    when 'div'
      puts @result = @first_input / @second_input
    end
# end
