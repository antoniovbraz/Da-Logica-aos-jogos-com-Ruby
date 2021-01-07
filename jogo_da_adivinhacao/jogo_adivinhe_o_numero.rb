require_relative 'funcoes'

nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
  joga nome, dificuldade
  break if nao_quer_jogar?
end