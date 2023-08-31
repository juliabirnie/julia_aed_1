#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#+++++++++++++++++++++ Análise Exploratória de Dados ++++++++++++++++++++++++++#
#+++++++++++++++++++++++++ Júlia Birnie Farias ++++++++++++++++++++++++++++++++#
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

## 1) Informações sobre o projeto:

# Script para AED de um banco de dados do kaggle 
#(Heart Attack Analysis & Prediction Dataset)

# 1.1) Variáveis:

# Age : Age of the patient

# Sex : Sex of the patient (1= men; 0= woman)

# exng: exercise induced angina (1 = yes; 0 = no)

# cp : Chest Pain type chest pain type
#   Value 1: typical angina
#   Value 2: atypical angina
#   Value 3: non-anginal pain
#   Value 4: asymptomatic

# trtbps : resting blood pressure (in mm Hg)

# chol : cholestoral in mg/dl fetched via BMI sensor

# fbs : (fasting blood sugar > 120 mg/dl) (1 = true; 0 = false)

# rest_ecg : resting electrocardiographic results
#   Value 0: normal
#   Value 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
#   Value 2: showing probable or definite left ventricular hypertrophy by Estes' criteria

#thalach : maximum heart rate achieved

# ca: number of major vessels (0-3)


## 2) Carregando bibliotecas:

library(tableone)
library(ggplot2)

## 3) Carregando base de dados:
dados <- read.csv("C:/Users/Windows/Desktop/JULIA/Github/julia_aed_1/heart.csv")

## 4) Verificando estrutura do banco
View (dados)
str (dados)
summary (dados)
class(dados$age)

## 4.1) Corrigindo formato dos dados

# Sexo:
dados$sex2 <- factor (dados$sex, labels = c("Fem", "Masc"))
class(dados$sex)

# exng: exercise induced angina (1 = yes; 0 = no)
dados$exng2 <- factor (dados$exng, labels = c("Não", "Sim"))

# cp : Chest Pain type chest pain type
#   Value 1: typical angina
#   Value 2: atypical angina
#   Value 3: non-anginal pain
#   Value 4: asymptomatic

dados$cp2 <- factor (dados$cp, labels = c("Angina Típica", "Angina Atípica", 
                                          "Dor Não-Angínica", "Assintomático"))

# fbs : (fasting blood sugar > 120 mg/dl) (1 = true; 0 = false)
dados$fbs2 <- factor (dados$fbs, labels = c("Não", "Sim"))


# restecg : resting electrocardiographic results
#   Value 0: normal
#   Value 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
#   Value 2: showing probable or definite left ventricular hypertrophy by Estes' criteria

dados$restecg2 <- factor (dados$restecg, labels = c("Normal", "Anormal 1", 
                                                    "Anormal 2"))

# Desfecho
dados$output2 <- factor (dados$output, labels = c("Não", "Sim"))


## 5) Análise Univariada

# Selecionando as variaveis que irao compor as tabelas 1:

var1 <- c( "age","sex2", "cp2", "trtbps","chol", "fbs2", "restecg2",
           "thalachh","exng2", "oldpeak","slp", "caa", "thall")

## criando o objeto da TableOne

tabela1 <- CreateTableOne(vars = var1, data = dados, includeNA = T)
print(tabela1, showAllLevels = TRUE)

## 6) Análise Bivariada


## criando o objeto da TableOne

tabela2 <- CreateTableOne(vars = var1,strata = "output2", data = dados, includeNA = T)
print(tabela2, showAllLevels = TRUE)

## 7) Perguntas:




