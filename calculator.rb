require 'pry'
class Calculator

  attr_accessor :first_input, :second_input
  def intialize (first_input, second_input)

    @first_input = first_input
    binding.pry
    @second_input = second_input
    binding.pry


  end

  def calculate (ops)
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
