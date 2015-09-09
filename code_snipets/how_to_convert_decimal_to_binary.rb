require 'pry-byebug'

class NumberToBinary
  def initialize(number)
    @number = number
  end

  def convert
    remainders = divide_by_2_until_zero(@number)
    convert_to_zeros_and_ones(remainders)
  end
  
  def divide_by_2_until_zero(number, remainders = [])
    quotient = number.abs
    return remainders if quotient.floor.zero?
    puts quotient
    remainders << quotient
    divide_by_2_until_zero(quotient / 2, remainders)
  end

  def resolve_negative_numbers_with_2s_compliment(number:)
    number += 1
  #changes bits if 0 then 1 if 1 then 0
    #add 1...deterimine length 0001 or 000001 or 00000001 etc
  end

  def convert_to_zeros_and_ones(remainders)
    binary = remainders.map do |remainder|
      remainder.even? ? 0 : 1
    end
    binary.join.reverse
  end
end
  #divide until zero
  #set to 0 if even and 1 if odd
  #reverse the order

puts "Running..."
puts NumberToBinary.new(5).convert
