def compare(a, b, c, d)
  a > b || c < d
end
  
a = 2
b = 1
c = 2
d = 4
result = compare(a, b, c, d)

puts "O resultado da comparação é #{result}"