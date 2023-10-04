#Missão 2
#Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

hash = {}  # Cria um hash vazio chamado "hash" para armazenar pares chave-valor.

3.times do  # Inicia um loop que irá executar 3 vezes para coletar 3 pares chave-valor.
  print "Informe sua chave: "  # Solicita ao usuário que insira a chave.
  key = gets.chomp  # Lê a entrada do usuário e armazena na variável "key".

  print "Informe seu valor: "  # Solicita ao usuário que insira o valor correspondente à chave.
  value = gets.chomp  # Lê a entrada do usuário e armazena na variável "value".

  hash[key] = value  # Adiciona o par chave-valor ao hash, usando a chave como índice.
end

hash.each do |k, v|  # Inicia um loop que percorre o hash e pega cada par chave-valor.
  puts "Uma das chaves é #{k} e o seu valor é #{v}"  # Exibe a chave e seu valor.
end
