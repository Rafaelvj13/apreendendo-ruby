#Missão 3
#Dado o seguinte hash:
#Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
#Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante. 

numbers = {a: 10, b: 30, c: 20, d: 25, e: 60}  # Cria um hash chamado "numbers" com pares chave-valor.

maior_numero = 0  # Inicializa uma variável "maior_numero" com 0 para rastrear o maior valor encontrado.
result = []  # Inicializa um array vazio "result" para armazenar a chave e o valor do maior número.

numbers.each do |key, value|  # Inicia um loop que percorre todos os pares chave-valor no hash "numbers".
  if value > maior_numero  # Verifica se o valor atual é maior que o "maior_numero" atual.
    maior_numero = value  # Atualiza "maior_numero" com o novo valor, caso seja maior.
    result = [key, value]  # Atualiza "result" com a chave e o valor do novo número mais alto.
  end
end

puts "O maior número é o da chave #{result[0]} com o valor #{result[1]}"  # Exibe a chave e o valor do maior número encontrado.
