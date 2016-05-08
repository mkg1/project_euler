#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# sum = 0
# (1...1000).each do |n|
#   if n % 3 == 0 || n % 5 == 0
#     sum += n
#   end
# end
#
# puts sum

#REFACTOR
# array = (1...1000).select {|n| (n % 3 == 0 || n % 5 == 0)}
# sum = array.reduce(:+)
# puts sum

#RE-REFACTOR
def get_sum(multiple, upto)
  n = (upto - 1) / multiple
  n * (n+1) / 2 * multiple
end

puts get_sum(3, 1000) + get_sum(5, 1000) - get_sum(15, 1000)
