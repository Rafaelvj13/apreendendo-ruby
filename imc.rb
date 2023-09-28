print 'digite seu peso: '
peso = gets.chomp.to_f

print 'digite sua altura: '
altura = gets.chomp.to_f

imc = peso / (altura * altura)


if  imc <= 18.5 
  resultado = 'abaixo do peso'
elsif imc <= 24.9
  resultado = 'Peso normal'
else
  resultado = 'acima do peso'
end

puts "seu imc é de #{imc} e você está #{resultado}"