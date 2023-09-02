# Como foi desenvolver

## Desafio 1
* Cria um banco com o nome de **`SpotifyClone`**.

* Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção anterior;

## Desafio 2

Faz uma `VIEW` chamada `estatisticas_musicais` que exiba três colunas:

1. A primeira coluna exibi a quantidade total de canções. Essa coluna tem o alias "**cancoes**".

2. A segunda coluna exibi a quantidade total de artistas e tem o alias "**artistas**".

3. A terceira coluna exibi a quantidade de álbuns e tem o alias "**albuns**".

## Desafio 3

Faz uma `VIEW` chamada `historico_reproducao_usuarios`. Essa `VIEW` deverá ter apenas duas colunas:

1. A primeira coluna possui o alias "**usuario**" e exibi o nome da pessoa usuária.

2. A segunda coluna possui o alias "**nome**" e exibi o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.

Os resultados estão ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.

## Desafio 4

Faz uma `VIEW` com o nome `top_3_artistas` que deve mostrar somente as três pessoas artistas mais populares no banco `SpotifyClone`, possuindo as seguintes colunas:

1. A primeira coluna com o alias "**artista**" e exibi o nome da pessoa artista.

2. A segunda coluna com alias "**seguidores**" e exibi a quantidade de pessoas que estão seguindo aquela pessoa artista.

O retorno esta ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de empate, ordena os resultados pelo nome da pessoa artista em ordem alfabética.

## Desafio 5

Para saber quais são as duas músicas mais tocadas no momento. Cria uma `VIEW` chamada `top_2_hits_do_momento` que possui duas colunas:

1. A primeira coluna possui o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna possui o alias "**reproducoes**" e exibi a quantidade de pessoas que já escutaram a canção em questão.

## Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, retorna algumas informações sobre o faturamento da empresa. Crie uma `VIEW` chamada `faturamento_atual` que deve exibir quatro dados:

1. A primeira coluna com alias "**faturamento_minimo**" e exibi o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna com o alias "**faturamento_maximo**" e exibi o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna com o alias "**faturamento_medio**" e exibi o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna com alias "**faturamento_total**" e exibi o valor total obtido com os planos possuídos por pessuas usuárias.

## Desafio 7

Mostra uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir:

1. A primeira coluna mostra o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna mostra o nome do álbum, com o alias "**album**".

3. A terceira coluna mostra a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".

Os resultados devem estão ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, os resultados estão em ordem alfabética pelo nome do artista e caso há artistas com o mesmo nome, os resultados ordena pelo nome do álbum alfabeticamente.


## Desafio 8

Um trigger chamada `trigger_usuario_delete` que deve ser disparada sempre que uma pessoa usuária for excluída do banco de dados, refletindo essa exclusão em todas as tabelas que ela estiver.

## Desafio 9

Uma procedure chamada `albuns_do_artista` que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados estão ordenados pelo nome do álbum em ordem alfabética.

## Desafio 10

Uma function chamada de `quantidade_musicas_no_historico` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código identificador da pessoa, exibe a quantidade de canções em seu histórico de reprodução.


## Desafio 11

Uma `VIEW` chamada `cancoes_premium` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:

* A primeira coluna exibi o nome da canção, com o alias "**nome**";

* A segunda coluna exibi a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";

* Seus resultados esta agrupados pelo nome da canção e ordenados em ordem alfabética.