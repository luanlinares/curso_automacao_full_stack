#Repetição de um bloco por um certo número de vezes
  # 5.times do |i|
  #   puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
  # end

#WHILE - Repete o bloco enquanto uma condição for verdadeira
  # init = 0
  # while init <= 10 do
  #   puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
  #   init += 1
  # end

#FOR - Semelhante ao While, porém a declaração da variável é dentro da estrutura. 
  # for item in (0...10)
  #   puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
  # end

#ARRAYS - []
vingadores = ['Ironman', 'Hulk', 'SpiderMan', 'Thor']

#Estrutura de repetição do Array
vingadores.each do |v|
  puts v
end