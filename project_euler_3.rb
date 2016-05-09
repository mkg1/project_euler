#The prime factors of 13195 are 5, 7, 13, and 29.

#What is the largest prime factor of the number 600851475143?


def find_factors(number)
  factors = []
  (2..Math.sqrt(number)).each do |n|
    if number % n == 0
      factors << n
    end
  end
  return factors
end

factors = find_factors(600851475143)
print factors
# def find_primes(array)
#   array.each do |x|
#     ...
#   end
# end
