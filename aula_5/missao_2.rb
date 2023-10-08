#Missão 2
#Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido. 

require "cpf_cnpj"

def check_cpf(cpf_number)
  if CPF.valid?(cpf_number)
    return "O CPF informado é válido"
  else
    return "O CPF informado é inválido"
  end
end

print 'Digite seu CPF: '
cpf_number = gets.chomp

result = check_cpf(cpf_number)

puts result
