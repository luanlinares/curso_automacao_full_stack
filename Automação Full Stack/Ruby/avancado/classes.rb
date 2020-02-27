class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor #Está invocando o atributo saldo dentro da classe. 
    #puts 'Depositando a quantia de ' + valor.to_s + ' reais.' - Concatenação
    puts "Depositando a quantia de #{valor} reais na conta de #{nome}." # Interpolação
  end
end

c = Conta.new('Luan')
c.deposita(100.00)
puts c.saldo

c.deposita(15.00)
puts c.saldo