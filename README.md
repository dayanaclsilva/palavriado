# O Jogo

Um jogo onde você deve combinar letras (cartas) para formar palavras que estão num dicionário limitado.

## As Letras (cartas)
Imagina-se que teremos uma quantidade limitada de letras que não incluem o alfabeto inteiro.

## A Mão
Quantas cartas vão na mão do jogador?
Depende do tamanho médio das palavras
Vamos começar com palavras menores e aumentando 

## As Palavras
Qual o tamanho máxima das palavras?

## O Dicionário
O dicionário é o lugar onde as palavras que devem ser formadas vão ficar armazenadas

# O Plano

Inicialmente vamos se concentrar nas parte essenciais:

1. Sacar cartas de um baralho
2. Escolher a carta da mão
3. Posicionar ela na posição correta
4. Trazer de volta para a mão
5. Consultar palavra formada no dicionário

Precisamos de algo mínimo para que o trabalho se separe em duas branchs

Fazer uma versão preliminar onde o jogador pode clicar/escolher as letras e o sistema reconheça aquelas letras soltas como uma coisa, independente se forma uma palavra ou não, só para que consigamos testar tanto a parte lógica de reconhecimento, se a palavra está no dicionário ou não, quanto a parte de front-end de sacar cartas e escolher elas para formar as palavras.

Ai nos separamos em:

- feat/deck-building
- feat/

## Como é feita a pesquisa no dicionário?
As palavras ficam armazenadas num array que utiliza de um for para detectar as palavras.

## Como as palavras são armazenadas no dicionário?
Sei lá String?
