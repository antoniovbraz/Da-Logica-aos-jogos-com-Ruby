require_relative 'funcoes'

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 8
chutes = []
pontos_ate_agora = 1000

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero chutes, tentativa,
          limite_de_tentativas
  chutes << chute
  pontos_a_perder = (chute - numero_secreto).abs / 2.0
  if pontos_a_perder < 0
    pontos_a_perder *= -1
  end
  pontos_ate_agora = pontos_ate_agora - pontos_a_perder
  if verifica_se_acertou numero_secreto, chute
    break
  end
end
puts "Você ganhou #{pontos_ate_agora} pontos."
