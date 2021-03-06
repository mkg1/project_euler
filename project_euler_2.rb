# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

#ugly method:
fib = [1, 2]
i = 0
while fib[i + 1] < 4000001
  nextup = fib[i] + fib[i + 1]
  fib << nextup
  i +=1
end

lessers = fib[0..-2]
print lessers
to_add = []
lessers.each do |n|
  if n.even?
    to_add << n
  end
end
print to_add

print to_add.inject(0, :+)

#correct answer: 4613732
