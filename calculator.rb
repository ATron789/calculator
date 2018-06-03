require 'pry'

def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

end

answer = get_int_values.inject(operator)
puts "The answer is... #{ answer }"




# class Calculator
#
#   attr_accessor :first_input, :second_input, :ops
#
#   def intialize (first_input, second_input, ops)
#
#     @first_input = first_input
#     @second_input = second_input
#     @ops = ops
#
#   end
#
#   def operation
#     case @ops
#     when 'sum'
#       puts @result = @first_input + @second_input
#     when 'min'
#       puts @result = @first_input - @second_input
#     when 'tim'
#       puts @result =  @first_input * @second_input
#     when 'div'
#       puts @result = @first_input / @second_input
#     end
# end
