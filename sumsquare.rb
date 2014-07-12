# Problem: Sum square difference
#
# The sum of the squares of the first ten natural numbers is,
#   12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class Integer
  def square
    self ** 2
  end
end

puts "Enter number of natural numbers:"
n = gets.chomp.to_i

numbers = (1..n).to_a

square_sum = 0
(1..n).each do |i|
   square_sum += i.square
end

sum = 0
(1..n).each do |i|
   sum += i
end

sum_square = sum.square
puts sum_square - square_sum
