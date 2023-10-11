class Mercado
  def initialize(produto, preco)
    @produto = produto 
    @preco = preco 
  end

  def comprar
    puts "Você comprou um produto #{@produto} no valor de #{@preco}"
  end
end

  