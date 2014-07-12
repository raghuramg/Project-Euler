# Problem: Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


def sum_of_multiples(*args)
  sum = 0
  (1..args[0]).each do |i|
    sum += i if i%args[1] == 0 || i%args[2] == 0
  end
  puts "Sum of multiples of #{args[1]} or #{args[2]} below #{args[0]+1} is #{sum}"
end

puts "Enter first mutiple"
m1 = gets.chomp.to_i
puts "Enter second mutiple"
m2 = gets.chomp.to_i
puts "Enter number below which you want to calculate sum of above multiples"
a = gets.chomp.to_i
sum_of_multiples(a-1, m1, m2)
