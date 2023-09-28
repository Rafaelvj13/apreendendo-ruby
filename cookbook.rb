INSERIR_RECEITA = 1
VIZUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
  puts "Bem vindos ao cookbook, sua rede social de receitas"
end

bem_vindo()

def menu()
  puts "[#{INSERIR_RECEITA}] Cadastrar receita"
  puts "[#{VIZUALIZAR_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
  puts "[#{SAIR}] Sair"
  
  puts "Escolha uma opção"
  return gets.to_i()
end

def inserir_receitas(receitas)
  puts "Digite o nome da receita: "
  nome = gets.chomp
  puts "Digite o tipo de receita: "
  tipo = gets.chomp

  puts
  puts "Receita de #{nome} cadastrada com sucesso."
  puts
  receitas << { nome: nome, tipo: tipo }  # Usar << para adicionar ao array
end

def imprimir_receitas(receitas)
  puts "========== Receitas cadastradas =========="
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
  if receitas.empty?
    puts "Nenhuma receita cadastrada"
  end
end

receitas = []
opcao = menu()

loop do
  if (opcao == INSERIR_RECEITA)
    inserir_receitas(receitas)
  elsif (opcao == VIZUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
  elsif (opcao == SAIR)
    break
  else
    puts 'Opção inválida'
  end
  opcao = menu()
end

puts
puts "Obrigado por usar o cookbook, até mais"
