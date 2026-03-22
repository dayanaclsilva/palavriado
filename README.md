# O Jogo

Um jogo onde você deve combinar letras (cartas) para formar palavras que estão num dicionário limitado. 

## O Dicionário
É uma lista de palavras. A princípio iniciaremos com 10 palavras.

## As Palavras
O tamanho máximo da palavra que pode ser formada pelo jogador, é uma palavra com **10 letras**.

| Id    | Descricao      | Qtd letras |
| ----- | -------------- | ---------- |
| 1<br> | **Café**       | 4          |
| 2     | **Livro**      | 5          |
| 3     | **Janela**     | 6          |
| 4     | **Caminho**    | 7          |
| 5     | **Trabalho**   | 8          |
| 6     | **Bicicleta**  | 9          |
| 7     | **Esperança**  | 9          |
| 8     | **Liberdade**  | 9          |
| 9     | **Computador** | 10         |
| 10    | **Nascimento** | 10         |

## As Letras (cartas)
Teremos uma quantidade limitada de letras que não incluem o alfabeto inteiro.

## A Mão
-  O jogador deve começar a partida com 9 letras na mão;

# O Plano

Inicialmente vamos se concentrar nas parte essenciais:

1. Sacar cartas de um baralho
2. Escolher a carta da mão
3. Posicionar ela na posição correta
4. Trazer de volta para a mão
5. Consultar palavra formada no dicionário

Precisamos de algo mínimo para que o trabalho se separe em duas branches

Fazer uma versão preliminar onde o jogador pode clicar/escolher as letras e o sistema reconheça aquelas letras soltas como uma coisa, independente se forma uma palavra ou não, só para que consigamos testar tanto a parte lógica de reconhecimento, se a palavra está no dicionário ou não, quanto a parte de front-end de sacar cartas e escolher elas para formar as palavras.

Ai nos separamos em:

- feat/deck-building
- feat/deck-methods

## Como é feita a pesquisa no dicionário?

Quando o jogador define a palavra, ele deve apertar no botão que aciona a validação do dicionário. Após o clique, buscaremos a palavra definida pelo jogador dentro do dicionário, se encontrar, o jogador vence a partida.
