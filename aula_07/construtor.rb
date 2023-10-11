class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def check
    puts "Instância de classes iniciada com valores: "
    puts "Name = #{@name}"
    puts "age = #{@age}"
  end
end

person = Person.new('João', 12)
person.check
