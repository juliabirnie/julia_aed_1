#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#+++++++++++++++++++++ Análise Exploratória de Dados ++++++++++++++++++++++++++#
#+++++++++++++++++++++++++ Júlia Birnie Farias ++++++++++++++++++++++++++++++++#
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

## 1) Informações sobre o projeto:

# Script para AED de um banco de dados do kaggle 
#(Heart Attack Analysis & Prediction Dataset)

## 2) Carregando bibliotecas:

library(tableone)
library(ggplot2)

## 3) Carregando base de dados:
dados <- read.csv
("C:/Users/Windows/Desktop/JULIA/Github/julia_aed_1/Dados/heart.csv")

## 4) Verificando estrutura do banco
View (dados)
summary (dados)

