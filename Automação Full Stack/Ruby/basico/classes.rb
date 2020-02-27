#Uma classe ppossui atributos e métodos, ou seja, características e ações. 
#Classe Carro
  #Atributos: Cor, Marca, Modelo, etc
  #Métodos: Ligar, desligar, acelerar, parar, etc. 

class Carro
  attr_accessor :nome #Atributo
  def ligar
    puts 'O carro está pronto para iniciar o trajeto'
  end
end

#Variavel Civic instanciando a classe Carro. 
civic = Carro.new
#Atribuindo um conteúdo ao atributo
civic.nome = 'Civic'

puts civic.nome
civic.ligar