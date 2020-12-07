# Jogo da adivinhação
require_relative "funcoes"

da_boas_vindas

numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 3

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa, limite_de_tentativas
  break if verifica_se_acertou numero_secreto, chute
end