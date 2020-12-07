# Jogo da adivinhação

puts "Bem-vindo ao jogo da adivinhação"
puts
puts "Qual o seu nome?"
nome = gets
6.times { puts }
puts "Começaremos o jogo para você, #{ nome }." 
puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"

limite_de_tentativas = 3

for tentativa in 1..limite_de_tentativas
  4.times { puts }

  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s 

  puts "Entre com o número"
  chute = gets

  puts "Será que acertou? Você chutou " + chute

  acertou = numero_secreto == chute.to_i

  if acertou
    puts "Acertou!"
    break
  else
    maior = numero_secreto > chute.to_i
      if maior
        puts "O número secreto é maior"
      else
        puts "O úmero secreto é menor"
      end
  end
end