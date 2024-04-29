# Medidas Separatrizes
## Análise de Medidas Separatrizes com Banco de Dados do IBGE.

Este repositório contém análises realizadas com medidas separatrizes das variáveis Renda, Idade e Altura, utilizando um banco de dados fornecido pelo Instituto Brasileiro de Geografia e Estatística (IBGE). As medidas separatrizes utilizadas incluem quartis, decis e centis.

-----------------------------------------------------------------
## Estrutura do Repositório
* O banco de dados possui 9 variáveis e 76840 registros e estão disponíveis neste repositório, intitulados como "dados.csv".
* Os scripts estão disponíveis neste repositório e foi nomeado como: boxplot.R.
* Todo o projeto foi desenvolvido com a Linguagem R.
-----------------------------------------------------------------
## Análises realizadas na variável (Renda)
Para a variável Renda, foram calculados os quartis, decis e centis. Essas medidas nos fornecem uma visão detalhada da distribuição da renda na amostra estudada.

### Resultado dos 'Quartis' da variável Renda 

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/4372baa3-df86-4403-b86b-428bf91653e4)

* O Primeiro Quartil (Q1): 25% dos dados de renda estão abaixo de 788 reais. Isso sugere que um quarto da população analisada possui renda inferior a esse valor.
* O Segundo Quartil (Q2): Também conhecido como mediana, é o valor que divide o conjunto de dados ao meio. Neste caso, metade da população tem uma renda inferior a 1200 reais.
* O Terceiro Quartil (Q3): 75% dos dados de renda estão abaixo de 2000 reias. Isso indica que a maioria (três quartos) da população tem uma renda inferior a esse valor.
-----------------------------------------------------------------
### Resultado dos 'Decis' da variável Renda

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/379d5404-fe4f-4c8f-95b6-822ee7fce24b)


A análise com Decis oferece uma visão mais granular da variável Renda. Assim  proporciona uma compreensão abrangente da distribuição de renda na amostra, ajudando a identificar os diferentes estratos socioeconômicos e subsidiando a formulação de políticas e estratégias voltadas para diversos segmentos da população.

-----------------------------------------------------------------
## Análises realizadas na variável (Idade)
Para a variável Idade, foram calculados os quartis, decis e centis. Essas medidas nos fornecem uma visão detalhada da distribuição da renda na amostra estudada.

### Resultado dos 'Quartis' da variável Idade
![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/2d709b91-bfce-46a0-9cc6-fa5f70550fee)

* O resultado da análise da variável Idade com quartis revela insights importantes sobre a distribuição das idades na amostra analisada.
* Primeiro Quartil (Q1): 25% dos dados de idade estão abaixo de 34 anos. Isso sugere que um quarto da população analisada possui idade inferior a este valor.
* Segundo Quartil (Q2): Este é o valor da mediana, que é de 43 anos. Significa que metade da população tem uma idade inferior a 43 anos e a outra metade tem uma idade superior a esse valor.
* Terceiro Quartil (Q3): 75% dos dados de idade estão abaixo de 53 anos. Isso indica que a maioria (três quartos) da população tem uma idade inferior a esse valor, sugerindo uma presença significativa de pessoas relativamente jovens na amostra.
-----------------------------------------------------------------
### Resultado dos 'Decis' da variável Idade
![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/6f791c7d-8471-4dd5-bb9d-1568711c595d)


Este resultado da análise dos decis da variável Idade oferece uma visão detalhada da distribuição das idades na amostra analisada. 
* 10% dos dados de Idade estão abaixo de 28 anos
* 20% dos dados de Idade estão abaixo de 33 anos
* 30% dos dados de Idade estão abaixo de 36 anos
* 40% dos dados de Idade estão abaixo de 40 anos
* 50% dos dados de Idade estão abaixo de 43 anos
* 60% dos dados de Idade estão abaixo de 47 anos
* 70% dos dados de Idade estão abaixo de 51 anos
* 80% dos dados de Idade estão abaixo de 55 anos
* 90% dos dados de Idade estão abaixo de 61 anos: Isso sugere que uma parcela significativa da população possui uma idade mais avançada.
  
Esses resultados detalhados dos decis proporcionam uma compreensão abrangente da distribuição das idades na amostra, permitindo identificar diferentes faixas etárias e subsidiando análises demográficas e socioeconômicas mais precisas.

-----------------------------------------------------------------
E para uma melhor interpretação dos dados e visualização um BoxPlot foi gerado. Temos como resultado um  Intervalo Interquartil que indica que a maioria das alturas se concentra entre aproximadamente 1,65 e 1,75 metros.

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/bcc4a5f0-06bc-460c-bc60-45c95bc2a549)


-----------------------------------------------------------------

Abaixo, está uma análise da relação entre as variáveis Altura e Sexo, visualizada por meio de um boxplot. Este gráfico de boxplot nos permite visualizar a distribuição da altura de indivíduos de diferentes sexos. Assim, podemos entender melhor como a altura é distribuída entre homens e mulheres na amostra analisada.

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/0029981f-bc3d-470d-b8bf-0d3f1f4c0e21)

-----------------------------------------------------------------

#### Análise da variável Renda com Boxplot
A partir de agora analisaremos a variável Renda e neste Boxplot temos uma análise das rendas abaixo de 10.000, uma vez que a variável é diversificada e extensa:

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/55f6efed-2a85-4c2c-af75-5d5d34169885)


-----------------------------------------------------------------

Neste Boxplot temos uma análise das rendas iguais ou maiores que 5.000:

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/d5382e20-0dd3-4496-bd02-f7581b60f996)

-----------------------------------------------------------------
 O Boxplot abaixo apresenta uma Análise de relação entre as variáveis Sexo e Renda acima de 15.000:

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/64c93170-7b56-447d-bc90-e44b1bc9146f)


No boxplot apresentado, é perceptível que, em geral, os homens possuem uma renda superior às mulheres. Esta conclusão é suportada pela posição da mediana (linha central do retângulo) nos boxplots correspondentes a cada sexo: a mediana do boxplot masculino está mais alta do que a mediana do boxplot feminino. Isso sugere que a renda média dos homens é mais alta em comparação com a das mulheres na amostra analisada.

-----------------------------------------------------------------

#### Análise da variável Anos de Estudos
O boxplot abaixo mostra a distribuição da variável " Anos de Estudo", e a partir dele, podemos observar que a maioria da população possui níveis de escolaridade consideráveis.

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/db595fb8-75cb-4ee8-8a34-1eb0bfe00913)

--------------------------------------------------------------------

Após a análise da relação entre as variáveis Sexo e Anos de Estudos, observamos nos resultados do boxplot que, embora as mulheres tenham, em média, níveis de escolaridade superiores aos dos homens, ainda assim, elas tendem a receber salários inferiores.

![image](https://github.com/AurelianoGon/bloxplot_ibge/assets/106711467/0d2a3a64-53b7-4b14-993a-1f70e0a28b8f)

-----------------------------------------------------------------

### Como Executar
Execute os scripts em R localizados no diretório scripts/ para reproduzir as análises.

-----------------

## Contribuições
Contribuições são bem-vindas! Se você encontrar algum problema ou tiver sugestões de melhorias, sinta-se à vontade para abrir uma issue ou enviar um pull request.

-----------------------------------

### Licença

LICENSE

Este projeto está licenciado sob a Licença MIT - consulte o arquivo LICENSE para obter detalhes.

-------------------------------------

### Autora
Brunna Aureliano Gonçalves.

Contato: brunnamian@gmail.com
