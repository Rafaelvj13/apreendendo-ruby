print "digite seu primeiro número inteiro: "

n1 = gets.chomp.to_i

print "digite o segundo número inteiro: "

n2 = gets.chomp.to_i

soma = n1 + n2 

subtracao = n1 - n2

multiplicacao = n1 * n2

divisao = n1 / n2

puts "a soma entre #{n1} e #{n2} é igual #{soma}"
puts " a subtação entre #{n1} e #{n2} é igual #{subtracao}"
puts " a multiplicação entre #{n1} e #{n2} é igual #{multiplicacao}"
puts " a divisão entre #{n1} e #{n2} é igual #{divisao}"