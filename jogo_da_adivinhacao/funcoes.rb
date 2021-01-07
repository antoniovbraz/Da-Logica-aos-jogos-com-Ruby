def da_boas_vindas
  puts "__________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"
  puts "________________¶¶¶___¶¶¶¶¶¶¶___¶¶¶"
  puts "_______________¶¶____¶¶__¶__¶¶____¶¶"
  puts "______________¶¶____¶¶___¶___¶¶____¶¶"
  puts "_____________¶¶____¶¶____¶____¶¶____¶¶"
  puts "___¶¶¶¶¶¶¶¶¶¶¶____¶¶_____¶_____¶_____¶¶"
  puts "__¶¶________¶_____¶¶_____¶_____¶¶_____¶"
  puts "__¶¶¶¶¶_____¶_____¶______¶______¶_____¶"
  puts "______¶¶¶¶¶¶¶¶¶¶_¶¶______¶______¶¶__¶¶¶"
  puts "____________¶¶¶¶¶¶¶¶¶____¶_____¶¶¶¶¶_¶"
  puts "_____________¶_____¶¶¶¶¶¶¶¶¶¶¶¶¶_____¶"
  puts "_____________¶____¶¶¶¶_______¶¶¶¶____¶"
  puts "_____________¶___¶¶__¶¶_____¶¶__¶¶___¶"
  puts "_____________¶___¶_¶¶_¶_____¶_¶¶_¶___¶"
  puts "_____________¶___¶_¶¶¶¶_____¶¶¶¶_¶___¶"
  puts "_____________¶___¶¶¶¶¶¶_____¶¶¶¶¶¶___¶"
  puts "_____________¶__________¶¶___________¶"
  puts "_____________¶___¶______¶¶¶______¶___¶"
  puts "_____________¶¶__¶¶_____________¶¶__¶¶"
  puts "______________¶____¶¶¶_______¶¶¶¶___¶"
  puts "______________¶__¶___¶¶¶¶¶¶¶¶¶_____¶"
  puts "_______________¶¶¶_______________¶¶"
  puts "_________________¶¶¶___________¶¶¶"
  puts "____________________¶¶¶¶¶¶¶¶¶¶¶"
  puts  
  puts "Bem vindo ao"
  puts "Jogo de Adivinhação!"
  puts
  puts "Qual o seu nome?"
  nome = gets.strip
  2.times { puts }
  puts "Começaremos o jogo para você, #{nome}."
  puts
  nome
end

def pede_dificuldade
  puts "Qual o nível de dificuldade?"
  puts
  puts "(1) Muito fácil (2) Fácil (3) Normal (4) Difícil
        (5) Impossível"
  puts "Escolha: "
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
  puts "Escolhendo um número secreto entre 1 e #{maximo}..."
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
  end
  maior = numero_secreto > chute
  if maior
    puts "O número secreto é maior!"
  else
    puts "O número secreto é menor!"
  end
  false
end

def joga(nome, dificuldade)
  numero_secreto = sorteia_numero_secreto dificuldade
  
  limite_de_tentativas = 6
  chutes = []
  pontos_ate_agora = 1000
  
  for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero chutes, tentativa,
            limite_de_tentativas
    chutes << chute
    
    # if nome == "Arthur"
    #   puts "Acertou!"
    #   break
    # end
    
    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora = pontos_ate_agora - pontos_a_perder
    if verifica_se_acertou numero_secreto, chute
      break
    end
  end
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end
  
  