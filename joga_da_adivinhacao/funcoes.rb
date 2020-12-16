def da_boas_vindas
  puts "Bem-vindo ao jogo da adivinhação"
  puts
  puts "Qual o seu nome?"
  nome = gets.strip
  6.times { puts }
  puts "Começaremos o jogo para você, #{nome}."
  nome
end

def pede_dificuldade
  puts "Qual o nível de dificuldade que deseja?
  (1 fácil, 5 difícil)"
  dificuldade = gets.to_i
end
  

def sorteia_numero_secreto(dificuldade)
  case dificuldade
  when 1
    maximo = 30
  when 2
    maximo = 60
  when 3
    maximo = 100
  when 4
    maximo = 150
  else
    maximo = 200
  end
  puts "Escolhendo um número secreto entre 0 e #{maximo - 1}..."
  sorteado = rand(maximo) + 1
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
  puts "\n\n\n\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o número"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute

  if acertou
    puts "Acertou!"
    return true
  else
    maior = numero_secreto > chute
      if maior
        puts "O número secreto é maior"
      else
        puts "O número secreto é menor"
      end
      false
  end
end