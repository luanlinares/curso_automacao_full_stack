#Lançamento de exceções do Ruby
#Exibe o motivo do erro
  # begin
  #   #Devo tentar alguma coisa.
  #   file = File.open('./ola.txt')
  #   if file
  #     puts file.read
  #   end
  # rescue Exception => e
  #   #Devo obter um possível erro. 
  #   puts e
  # end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao executar a soma'
end

puts soma('10', 5)
