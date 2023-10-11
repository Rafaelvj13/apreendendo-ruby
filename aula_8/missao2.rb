#Crie um módulo chamado Person com as classes Juridic e Physical

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "Pessoa Jurídica adicionada"
      puts "Nome:  #{@name}"  # Corrigindo a interpolação das variáveis
      puts "CNPJ: #{@cnpj}"   # Corrigindo a interpolação das variáveis
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "Pessoa Física Adicionada"
      puts "Nome: #{@name}"
      puts "CPF:  #{@cpf}"
    end
  end
end

# Criando e chamando objetos das classes
Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add
