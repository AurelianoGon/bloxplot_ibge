library(ggplot2)
library(tidyverse)

# Análise do banco de dados do IBGE com medidas separatrizes
# Análise do comportamento dos dados com BoxPlot

# carregamento do conjunto de dados 
medidas <- read.csv("dados.csv")

# Análise da variável Renda com Quartis
quantile(medidas$Renda, c(0.25, 0.50, 0.75))

quartis_renda <- quantile(medidas$Renda, c(0.25, 0.50, 0.75))

# Plotar o quartis da variávle Renda
barplot(quartis_renda, names.arg = c("Q1", "Q2 (Mediana)", "Q3"), 
        main = "Quartis da Variável Renda",
        xlab = "Quartis", ylab = "Renda",
        col = "darkgray", ylim = c(0, max(quartis) * 1.2))


# Análise da variável Renda com Decis
decis <- c()
for(i in 1:9){
  decis <- c(decis, i / 10) }

decis

# Resultado Decis 
quantile(medidas$Renda, decis)

barplot(decis, names.arg = paste("D", seq(10, 90, by = 10), sep = ""),
        main = "Decis da Variável Renda",
        xlab = "Decis", ylab = "Renda",
        col = "darkblue", ylim = c(0, max(decis) * 1.2))


## Análise da variável Renda com Centis
centis <- c()
for(i in 1:99){
  centis <- c(centis, i / 100) }

centis

#### --------- Variável Idade ----------------------- ####

# Análise da variável Idade com QUARTIS
quantile(medidas$Idade, c(0.25, 0.50, 0.75))
quartis_idade <- quantile(medidas$Idade, c(0.25, 0.50, 0.75))

quartis_idade

# Plotar QUARTIS 
barplot(quartis_idade, names.arg = c("Q1", "Mediana", "Q3"),
        main = "Análise da Variável Idade com Quartis",
        xlab = "Quartis", ylab = "Idade",
        col = "lightblue", ylim = c(0, max(quartis_idade) * 1.2))


# Calcular o DECIS
decis_idade <- quantile(medidas$Idade, probs = seq(0.1, 0.9, by = 0.1))
decis_idade

# Plotar o DECIS
barplot(decis_idade, names.arg = paste("D", seq(10, 90, by = 10), sep = ""),
        main = "DECIS da Variável Idade",
        xlab = "DECIS", ylab = "Idade",
        col = "darkgray", ylim = c(0, max(decis_idade) * 1.2))


# Visualizar as pessoas com menos de 50 anos de idade
medidas$Idade [medidas$Idade <= 50]

# Visualizar o total
length(medidas$Idade [medidas$Idade >= 80])

# Percentual
length(medidas$Idade [medidas$Idade >= 80]) / length(medidas$Idade) * 100

### -------------------------------------------------------------------

### criar vetores
sexo = c('Masculino', 'Feminino')

cor = c('Indígena', 'Branca', 'Preta', 'Amarela', 'Parda')

anos_de_estudo =c (
  'Sem intrução e menos de 1 ano',
  '1 ano', '2 anos', '3 anos', '4 anos', '5 anos', '6 anos', '7 anos',
  '8 anos', '9 anos', '10 anos', '11 anos', '12 anos', '13 anos', '14 anos',
  '15 anos ou mais','Não determinados')

## ----------------------------- BOXPLOTS ---------------------------------

# Boxplot da variável Altura
ggplot(medidas, aes(x = "", y = Altura)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Metros") +
  xlab("") +
  ggtitle('Alturas')

# Boxplot das variáveis Sexo e Altura (análise de relação entre as variáveis)
ggplot(medidas, aes(x = Sexo, y = Altura, group = Sexo)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Altura") +
  xlab("Sexo") +
  ggtitle('Alturas versus Sexo')

# Transformar a variável Sexo em categórica
medidas$cat.sexo <- factor(medidas$Sexo)

# Boxplot das variável Sexo como categórica
ggplot(medidas, aes(x = cat.sexo, y = Altura)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Altura") +
  xlab("Sexo") +
  ggtitle('Alturas versus Sexo')

# Boxplot com as variáveis Renda menor que 10000, seleção, pois a variável
# é diversa e extensa.
ggplot(medidas[medidas$Renda < 10000, ], aes(x = "", y = Renda)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Renda") +
  xlab("") +
  ggtitle('Renda')

# Maior ou igual a 20000
ggplot(medidas[medidas$Renda > 20000, ], aes(x = "", y = Renda)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Renda") +
  xlab("") +
  ggtitle('Renda')

# Maior ou igual a 5000
ggplot(medidas[medidas$Renda >= 5000, ], aes(x = "", y = Renda)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Renda") +
  xlab("") +
  ggtitle('Renda')

# Análise de relação entre as variáveis Sexo e Renda inferior a 5000
ggplot(medidas[medidas$Renda < 5000, ], aes(x = cat.sexo, y = Renda)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Renda") +
  xlab("Sexo") +
  ggtitle('Renda x Sexo')

# Análise de relação entre as variáveis Sexo e Renda acima de 15000
ggplot(medidas[medidas$Renda > 15000, ], aes(x = cat.sexo, y = Renda)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Renda") +
  xlab("Sexo") +
  ggtitle('Renda versus Sexo')

#### ---------------- Análise da variável ANOS DE ESTUDO ------------

# Transformar a variável Estudo em categórica
medidas$cat.estudo <- factor(medidas$Anos.de.Estudo, order = TRUE)

head(medidas)
      
# Boxplot da variável Anos de Estudos
ggplot(medidas, aes(x = "", y = Anos.de.Estudo)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Anos de Estudos") +
  xlab("") +
  ggtitle('Anos de Estudos')

# Boxplot da análise de relação das variáveis SEXO e ANOS DE ESTUDOS
ggplot(medidas, aes(x = cat.sexo, y = Anos.de.Estudo)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = c('#3274A1', 'orange')) +
  coord_flip() +
  ylab("Anos de Estudo") +
  xlab("Sexo") +
  ggtitle('Sexo versus Anos de estudo')


### Fim