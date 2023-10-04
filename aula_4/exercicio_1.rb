#Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência. 



array = []  # Cria um array vazio chamado "array" para armazenar os números inseridos.

i = 1  # Inicializa uma variável "i" com o valor 1. Será usada para rastrear o número de entrada do usuário.

1..3.times do  # Inicia um loop que irá executar 3 vezes (para obter 3 números do usuário).
  print "Digite o #{i}º número: "  # Exibe uma mensagem para o usuário solicitando um número.
  array.push gets.chomp.to_i  # Lê a entrada do usuário, converte-a para um número inteiro e a adiciona ao array "array".

  i += 1  # Incrementa o valor de "i" para acompanhar o número da entrada do usuário.
end

array.each do |a|  # Inicia um loop que percorre cada elemento no array "array".
  result = a ** 2  # Calcula o quadrado do número atual do array e armazena em "result".
  puts "O resultado do número #{a} elevado a segunda potência é #{result}"  # Exibe o resultado do cálculo.
end
