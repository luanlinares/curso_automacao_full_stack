class AvengersHeadQuarter
  attr_accessor :list
  
  def initialize
    self.list = []
  end
  
  def put(avenger)
    self.list.push(avenger)
  end
end

#TDD - DESENVOLVIMENTO GUIADO POR TESTES
describe AvengersHeadQuarter do
  it 'deve adicionar um vingadoe' do 
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    expect(hq.list).to include 'Spiderman'
  end

  it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('IronMan')
    expect(hq.list).to include 'Thor'
    #O Validador Include verifica se o registro está contido na lista. 
    
    expect(hq.list.size).to be > 0
    #Verifica se há itens na lista, conferindo se o valor da mesma é maior que 0. 

    res = hq.list.size > 0
    expect(res).to be true
    #Validação de um resultado verdadeiro ou falso. 
  end

  it 'Thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('IronMan')

    expect(hq.list).to start_with('Thor')
  end

  it 'IronMan deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('IronMan')

    expect(hq.list).to end_with('IronMan')
  end

  it 'Deve conter o sobrenome' do
    avenger = 'Peter Parker'

    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Linares/)
  end
end