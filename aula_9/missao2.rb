#Em uma classe chamada Carro, crie um método público chamado get_km que recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”. 
 
#O método get_km deve chamar um método privado com o nome de find_km. Este deve localizar e retornar o casamento de padrão 80km/h.
#No final, imprima este retorno. 

class Car
  def get_km(phrase)
    km = find_km(phrase)
    puts km
  end
 
  private
 
  def find_km(phrase)
    /\d{2,}km\/h/.match(phrase)
  end
 end
 
 phrase = "Um fusca de cor amarela viaja a 80km/h"
 
 car = Car.new
 car.get_km(phrase)