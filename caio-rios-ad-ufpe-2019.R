# Construção do banco de Dados-----------------
if(require(xlsx) == F) install.packages(xlsx); require(xlsx)
if(require(readxl) == F) install.packages(readxl); require(readxl)
if(require(tidyr) == F) install.packages(tidyr); require(tidyr)
if(require(tidyverse) == F) install.packages(tidyverse); require(tidyverse)
if(require(magrittr) == F) install.packages(magrittr); require(magrittr)
if(require(ggalt) == F) install.packages(ggalt); require(ggalt)
options(scipen=999)


# Preparação dos Dados

# Construindo Variável competição - Diferença entre candidatos mais votados


# Carregando os Dados: Fonte http://www.tse.jus.br/eleicoes/estatisticas/repositorio-de-dados-eleitorais-1/repositorio-de-dados-eleitorais------------



# 2000
setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/votacao_candidato_munzona_2000")

prefeito2000 <- rbind(read.csv2("votacao_candidato_munzona_2000_AC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_AL.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_AM.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_AP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_BA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_CE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_ES.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_GO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_MA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_MG.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_MS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_MT.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_PA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_PB.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_PE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_PI.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_PR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_RJ.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_RN.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_RO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_RR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_RS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_SC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_SE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_SP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2000_TO.txt", 
                                header = FALSE))

# 2004

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/votacao_candidato_munzona_2004")

prefeito2004 <- rbind(read.csv2("votacao_candidato_munzona_2004_AC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_AL.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_AM.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_AP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_BA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_CE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_ES.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_GO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_MA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_MG.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_MS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_MT.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_PA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_PB.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_PE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_PI.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_PR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_RJ.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_RN.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_RO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_RR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_RS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_SC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_SE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_SP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2004_TO.txt", 
                                header = FALSE))

# 2008

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/votacao_candidato_munzona_2008")

prefeito2008 <- rbind(read.csv2("votacao_candidato_munzona_2008_AC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_AL.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_AM.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_AP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_BA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_CE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_ES.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_GO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_MA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_MG.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_MS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_MT.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_PA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_PB.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_PE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_PI.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_PR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_RJ.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_RN.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_RO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_RR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_RS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_SC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_SE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_SP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2008_TO.txt", 
                                header = FALSE))

# 2012

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/votacao_candidato_munzona_2012")

prefeito2012 <- rbind(read.csv2("votacao_candidato_munzona_2012_AC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_AL.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_AM.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_AP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_BA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_CE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_ES.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_GO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_MA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_MG.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_MS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_MT.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_PA.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_PB.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_PE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_PI.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_PR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_RJ.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_RN.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_RO.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_RR.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_RS.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_SC.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_SE.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_SP.txt", 
                                header = FALSE),
                      read.csv2("votacao_candidato_munzona_2012_TO.txt", 
                                header = FALSE))

# 2016

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/votacao_candidato_munzona_2016")

prefeito2016 <- rbind(read.csv2("votacao_candidato_munzona_2016_AC.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_AL.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_AM.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_AP.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_BA.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_CE.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_ES.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_GO.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_MA.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_MG.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_MS.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_MT.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_PA.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_PB.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_PE.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_PI.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_PR.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_RJ.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_RN.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_RO.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_RR.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_RS.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_SC.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_SE.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_SP.csv", 
                                header = TRUE),
                      read.csv2("votacao_candidato_munzona_2016_TO.csv", 
                                header = TRUE))


# Unindo bases em uma só e criando variável competição nominal--------------------

prefeito2000_2012 <- rbind(prefeito2000, prefeito2004, prefeito2008, 
                           prefeito2012)

# Delimitando variáveis de interesse e unindo 2016 na base

prefeito2000_2012 <- prefeito2000_2012[ , c("V3", "V4", "V6", "V7", "V9",
                                            "V12", "V16", "V22", "V29")]
str(prefeito2016)

prefeito2000_2012 <- prefeito2000_2012 %>% rename(ANO_ELEICAO = V3,
                                                  NR_TURNO = V4,
                                                  SG_UF = V6,
                                                  CD_MUNICIPIO = V7,
                                                  NM_MUNICIPIO = V9,
                                                  NR_CANDIDATO = V12,
                                                  DS_CARGO = V16,
                                                  DS_SIT_TOT_TURNO = V22,
                                                  QT_VOTOS_NOMINAIS = V29)

prefeito2016 <- prefeito2016 [ , c("ANO_ELEICAO", "NR_TURNO", "SG_UF",
                                   "CD_MUNICIPIO", "NM_MUNICIPIO", 
                                   "NR_CANDIDATO", "DS_CARGO",
                                   "DS_SIT_TOT_TURNO", "QT_VOTOS_NOMINAIS")]

prefeito2000_2016 <- rbind(prefeito2000_2012, prefeito2016)

# Selecionando apenas eleições do primeiro turno e para prefeito

prefeito2000_2016 <- prefeito2000_2016 %>% filter(NR_TURNO == 1,
                                                  DS_CARGO != "VEREADOR",
                                                  DS_CARGO != "Vereador")

# Selecionando os dois candidatos mais votados

# Agrupar as zonas para que cada linha corresponda a eleição do município
# Não da Zona

prefeito2000_2016$NR_TURNO <- NULL
prefeito2000_2016$DS_CARGO <- NULL

prefeito2000_2016 <- prefeito2000_2016 %>% group_by(CD_MUNICIPIO, ANO_ELEICAO,
                                                    NR_CANDIDATO,
                                                    SG_UF, NM_MUNICIPIO, 
                                                    DS_SIT_TOT_TURNO)
prefeito2000_2016 <- prefeito2000_2016 %>% 
  summarise(QT_VOTOS_NOMINAIS = sum(QT_VOTOS_NOMINAIS))


# Ordenando a base para identificar os dois candidatos mais votados

str(prefeito2000_2016)
prefeito2000_2016 <- prefeito2000_2016[order(prefeito2000_2016$ANO_ELEICAO,
                                             prefeito2000_2016$SG_UF,
                                             prefeito2000_2016$CD_MUNICIPIO,
                                             prefeito2000_2016$QT_VOTOS_NOMINAIS,
                                             decreasing = TRUE),
                                       ]
prefeito2000_2016$count <- sequence(rle(prefeito2000_2016$CD_MUNICIPIO)$lengths)


prefeitomaisvotado <- prefeito2000_2016 %>% filter(count == 1)
prefeito2maisvotado <- prefeito2000_2016 %>% filter(count == 2)

# Criando variável chave para utilizar o join

prefeitomaisvotado$key <- paste(prefeitomaisvotado$CD_MUNICIPIO,
                                prefeitomaisvotado$ANO_ELEICAO, sep = "")

prefeito2maisvotado$key <- paste(prefeito2maisvotado$CD_MUNICIPIO,
                                 prefeito2maisvotado$ANO_ELEICAO, sep = "")
prefeito2maisvotado <- prefeito2maisvotado[ , c("key", "QT_VOTOS_NOMINAIS")]

competicao <- prefeitomaisvotado %>% inner_join(prefeito2maisvotado, by = "key")
competicao$count <- NULL

# Criando variável COMPETICAO_NOMINAL

competicao$COMPETICAO_NOMINAL <- 
  competicao$QT_VOTOS_NOMINAIS.x - competicao$QT_VOTOS_NOMINAIS.y
setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados")

save(competicao, file = "competicao.RData")

## Construindo variável independente "turnout"----------------------

# Dados baixados apartir do site do TRE
# http://www.tse.jus.br/eleicoes/estatisticas/repositorio-de-dados-eleitorais-1/repositorio-de-dados-eleitorais

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/detalhe_votacao_munzona_2000-2016")

# Carregando Dados----------------
turnout2000 <- rbind(read.csv2("detalhe_votacao_munzona_2000_AC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_AL.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_AM.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_AP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_BA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_CE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_ES.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_GO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_MA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_MG.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_MS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_MT.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_PA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_PB.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_PE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_PI.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_PR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_RJ.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_RN.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_RO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_RR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_RS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_SC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_SE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_SP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2000_TO.txt",
                               header = FALSE))


turnout2004 <- rbind(read.csv2("detalhe_votacao_munzona_2004_AC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_AL.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_AM.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_AP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_BA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_CE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_ES.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_GO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_MA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_MG.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_MS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_MT.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_PA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_PB.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_PE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_PI.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_PR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_RJ.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_RN.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_RO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_RR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_RS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_SC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_SE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_SP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2004_TO.txt",
                               header = FALSE))

turnout2008 <- rbind(read.csv2("detalhe_votacao_munzona_2008_AC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_AL.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_AM.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_AP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_BA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_CE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_ES.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_GO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_MA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_MG.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_MS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_MT.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_PA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_PB.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_PE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_PI.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_PR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_RJ.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_RN.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_RO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_RR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_RS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_SC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_SE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_SP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2008_TO.txt",
                               header = FALSE))


turnout2012 <- rbind(read.csv2("detalhe_votacao_munzona_2012_AC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_AL.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_AM.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_AP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_BA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_CE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_ES.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_GO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_MA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_MG.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_MS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_MT.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_PA.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_PB.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_PE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_PI.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_PR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_RJ.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_RN.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_RO.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_RR.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_RS.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_SC.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_SE.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_SP.txt",
                               header = FALSE),
                     read.csv2("detalhe_votacao_munzona_2012_TO.txt",
                               header = FALSE))

turnout2016 <- rbind(read.csv2("detalhe_votacao_munzona_2016_AC.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_AL.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_AM.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_AP.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_BA.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_CE.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_ES.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_GO.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_MA.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_MG.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_MS.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_MT.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_PA.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_PB.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_PE.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_PI.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_PR.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_RJ.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_RN.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_RO.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_RR.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_RS.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_SC.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_SE.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_SP.csv",
                               header = TRUE),
                     read.csv2("detalhe_votacao_munzona_2016_TO.csv",
                               header = TRUE))

# Arrumando os dados--------------------

turnout2000_2012 <- rbind(turnout2000, turnout2004, turnout2008, turnout2012)
turnout2000_2012 <- turnout2000_2012[, c("V3", "V4", "V6",
                                         "V7", "V9", "V12", 
                                         "V16", "V18", "V20")]
turnout2000_2012 <- rename(turnout2000_2012,
                           ANO_ELEICAO = V3,
                           NR_TURNO = V4,
                           SG_UF = V6,
                           CD_MUNICIPIO = V7,
                           NM_MUNICIPIO = V9,
                           DS_CARGO = V12,
                           QT_APTOS_TOT = V16,
                           QT_COMPARECIMENTO = V18,
                           QT_VOTOS_NOMINAIS = V20)

turnout2016 <- turnout2016[, c("ANO_ELEICAO",
                               "NR_TURNO",
                               "SG_UF",
                               "CD_MUNICIPIO",
                               "NM_MUNICIPIO",
                               "DS_CARGO",
                               "QT_APTOS_TOT",
                               "QT_COMPARECIMENTO",
                               "QT_VOTOS_NOMINAIS")]

turnout <- rbind(turnout2000_2012, turnout2016)


# Selecionando apenas eleições do primeiro turno e para prefeito

turnout <- turnout %>% filter(NR_TURNO == 1, 
                              DS_CARGO != "VEREADOR",
                              DS_CARGO != "Vereador")

turnout <- turnout %>% 
  mutate(DS_CARGO = ifelse(DS_CARGO == "Prefeito", "PREFEITO", "PREFEITO"))

# Somando as variáveis e agrupando por município

turnout <- turnout %>%  group_by(ANO_ELEICAO, CD_MUNICIPIO, 
                                 SG_UF, NM_MUNICIPIO)
turnout <- turnout %>% summarise(QT_APTOS_TOT = sum(QT_APTOS_TOT),
                                 QT_COMPARECIMENTO =sum(QT_COMPARECIMENTO),
                                 QT_VOTOS_NOMINAIS = sum(QT_VOTOS_NOMINAIS))


# Criando Variável key para unir a base competição

turnout$key <- paste(turnout$CD_MUNICIPIO,
                     turnout$ANO_ELEICAO,
                     sep = "")

# Salvando base

setwd ("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados")

save(turnout, file = "turnout.RData")

# Unindo os bancos competição e turnout----------

competicao <- competicao[ , c("key", "COMPETICAO_NOMINAL")]
banco <- turnout %>% left_join(competicao, by = "key")



# Variável competição será "1 - COMPETICAO_NOMINAL / QT_VOTOS_NOMINAIS"

banco$COMPETICAO <- 1 - (banco$COMPETICAO_NOMINAL/banco$QT_VOTOS_NOMINAIS)

# Variável turnout será "QT_COMPARECIMENTO / QT_APTOS_TOT"

banco$TURNOUT <- banco$QT_COMPARECIMENTO/banco$QT_APTOS_TOT

# Variável TURNO será 1 se QT_APTOS_TOTAL >= 200.000 e 0 se < 200.000

banco <- banco %>% 
  mutate(QT_APTOS_TOT = ifelse(QT_APTOS_TOT >= 200000, 1, 0))
banco <- rename(banco, TURNO = QT_APTOS_TOT)

banco <- banco[ , c("key", "CD_MUNICIPIO", "ANO_ELEICAO", "SG_UF", 
                    "NM_MUNICIPIO", "TURNOUT", "TURNO", "COMPETICAO")]

table(banco$TURNO)

# Criando var interativa: TURNO x COMPETIÇÃO

banco$TURNOxCOMPETICAO <- banco$TURNO*banco$COMPETICAO

# Variáveis de Controle--------------

# Quantidade de candidatos

num_candidatos <- prefeito2000_2016 %>% group_by(CD_MUNICIPIO, ANO_ELEICAO)
num_candidatos <- num_candidatos %>% summarise(QTD_CANDIDATOS = n())

num_candidatos$key <- paste(num_candidatos$CD_MUNICIPIO, 
                            num_candidatos$ANO_ELEICAO,
                            sep = "")
num_candidatos <- num_candidatos[, c("QTD_CANDIDATOS", "key")]
banco <- banco %>% left_join(num_candidatos, by = "key")


# IDHM - EDUCAÇÃO ; RENDA ; LONGEVIDADE
# Download da base disponível em:

# http://www.atlasbrasil.org.br/2013/pt/download/

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/Atlas")
atlas <- read_xlsx("atlas2013_dadosbrutos_pt.xlsx", "MUN 91-00-10")

# Códigos de Mun diferentes, para igualar utilizei a base abaixo

# Download da base disponível em:
# https://github.com/betafcc/Municipios-Brasileiros-TSE

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/Municipios-Brasileiros-TSE-master")
codmun <- read.csv("municipios_brasileiros_tse.csv")

codmun$uf <- NULL
codmun$nome_municipio <- NULL
codmun$capital <- NULL
codmun <- rename(codmun,
                 CD_MUNICIPIO = codigo_tse,
                 CD_MUN_IBGE = codigo_ibge)

banco <- banco %>% left_join(codmun, by = "CD_MUNICIPIO")

# Selecionando variáveis de interesse

atlas <- atlas[ , c("ANO", "Codmun7", "IDHM_E", "IDHM_L", "IDHM_R")]

# Dados de 2000 servirá para os anos 2000;2004;2008
# Dados de 2010 servirá para os anos 2012;2016

atlas <- atlas %>% filter(ANO >= 2000)
atlas2000 <- atlas %>% filter(ANO == 2000)
atlas2004 <- atlas2000
atlas2004$ANO <- 2004
atlas2008 <- atlas2000
atlas2008$ANO <- 2008
atlas2012 <- atlas %>% filter(ANO == 2010)
atlas2012$ANO <- 2012
atlas2016 <- atlas2012
atlas2016$ANO <- 2016

atlas <- rbind(atlas2000, atlas2004, atlas2008, atlas2012, atlas2016)

# Unindo os bancos

atlas$keyibge <- paste(atlas$Codmun7, atlas$ANO,
                       sep = "")
banco$keyibge <- paste(banco$CD_MUN_IBGE, banco$ANO_ELEICAO,
                       sep = "")
atlas$ANO <- NULL
atlas$Codmun7 <- NULL

banco <- banco %>% left_join(atlas, by = "keyibge")

# Variável tamanho do município

# Dados obtidos em:
# https://www.ibge.gov.br/geociencias/organizacao-do-territorio/estrutura-territorial/15761-areas-dos-municipios.html?=&t=downloads

setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados/IBGE TAMANHO")

tamanho <- read_xls("AR_BR_RG_UF_MES_MIC_MUN_2018.xls", "AR_BR_MUN_2018")

tamanho <- rename(tamanho,
                  CD_MUN_IBGE = CD_GCMUN,
                  TAMANHO = AR_MUN_2018)
tamanho$ID <- NULL
tamanho$CD_GCUF <- NULL
tamanho$NM_UF <- NULL
tamanho$NM_UF_SIGLA <- NULL
tamanho$NM_MUN_2018 <- NULL

str(tamanho)
str(banco)

# Unindo os bancos

tamanho$CD_MUN_IBGE <- as.numeric(tamanho$CD_MUN_IBGE)
banco <- banco %>% left_join(tamanho, by = "CD_MUN_IBGE")
banco$LOGTAMANHO <- log(banco$TAMANHO)
banco$key <- NULL
banco$keyibge <- NULL
banco$CD_MUN_IBGE <- NULL

# Salvando o Banco-----------------
setwd("C:/Users/kibca/OneDrive/Artigo Análise de Dados/Artigo_Analise_Dados/Dados")
save(banco, file = "banco.RData")

##########################################################################
######################## FIM DA CONSTRUÇÃO ###############################
######################## DO BANCO DE DADOS ###############################
##########################################################################


# Replicação do Artigo---------------------------

if(require(ggplot2) == F) install.packages(ggplot2); require(ggplot2)
if(require(ggrepel) == F) install.packages(ggrepel); require(ggrepel)
if(require(xlsx) == F) install.packages(xlsx); require(xlsx)
if(require(readxl) == F) install.packages(readxl); require(readxl)
if(require(tidyr) == F) install.packages(tidyr); require(tidyr)
if(require(tidyverse) == F) install.packages(tidyverse); require(tidyverse)
if(require(magrittr) == F) install.packages(magrittr); require(magrittr)
if(require(ggalt) == F) install.packages(ggalt); require(ggalt)
if(require(treemapify) == F) install.packages("treemapify"); require(treemapify)
if(require(jtools) == F) install.packages("jtools"); require(jtools)
if(require(lmtest) == F) install.packages("lmtest"); require(lmtest)
if(require(citr) == F) install.packages("citr"); require(citr)
if(require(sandwich) == F) install.packages("sandwich"); require(sandwich)
theme_set(theme_classic())
options(scipen=999)

# Rodando os Modelos Linear Model----------------
setwd()
read(banco.RData)
banco <- na.omit(banco)

reg1 <- lm(TURNOUT ~ TURNO + QTD_CANDIDATOS + IDHM_L + IDHM_R + LOGTAMANHO,
           data = banco)
reg2 <- lm(TURNOUT ~ COMPETICAO + QTD_CANDIDATOS + IDHM_L + IDHM_R + LOGTAMANHO,
           data = banco)
reg3 <- lm(TURNOUT ~ TURNO + COMPETICAO + TURNOxCOMPETICAO + QTD_CANDIDATOS + 
              IDHM_L + IDHM_R + LOGTAMANHO,
           data = banco)

# Heterocedasticidade foi encontrada
# Utilizando robust standard errors para resolver problemas de
# heterocedasticidade


reg1.1 <- coeftest(reg1, vcov = vcovHC(reg1, "HC1")) # HC1 para o erro padrão de White
reg2.1 <- coeftest(reg2, vcov = vcovHC(reg2, "HC1"))
reg3.1 <- coeftest(reg3, vcov = vcovHC(reg3, "HC1"))

# Gráficos-----------

# Gráfico 1 - Descritivas-------------

summary(banco)
sd(banco$TURNOUT, na.rm = TRUE)
sd(banco$TURNO, na.rm = TRUE)
sd(banco$COMPETICAO, na.rm = TRUE)
sd(banco$QTD_CANDIDATOS, na.rm = TRUE)
sd(banco$IDHM_E, na.rm = TRUE)
sd(banco$IDHM_R, na.rm = TRUE)

!is.na(banco$COMPETICAO)

# Criando vetores para cada coluna

var.names <- c("Comparecimento\n(0.87)", "Turno\n(0.01)", "Competição\n(0.84)",
               "Candidatos\n(2.78)", "Longevidade\n(0.75)", "Renda\n(0.60)")
mean.vec <- c(0.87, 0.01, 0.84, 2.78, 0.75, 0.60)
min.vec <- c(0.57, 0, -0.60, 1, 0.54, 0.33)
max.vec <- c(0.99, 1, 1, 15, 0.89, 0.89)
sd.vec <- c(0.06, 0.12, 0.16, 1.16, 0.07, 0.09)

# Ordenando utilizando médias da maior para a menor

mean.vec.order <- sort(mean.vec, decreasing = TRUE)
sd.vec.order <- sd.vec[order(mean.vec, decreasing=TRUE)]
min.vec.order <- min.vec[order(mean.vec, decreasing = TRUE)]
max.vec.order <- max.vec[order(mean.vec, decreasing = TRUE)]
var.names.order <- var.names[order(mean.vec, decreasing = TRUE)]

y.axis <- c(6:1)

# Montando o Gráfico 1

par(mfrow=c(1,1), mar=c(3,8,1,2))
plot(mean.vec.order, y.axis, type = "p", pch = 19, xlab="", ylab ="",
     axes = F, xlim = c(0, 3.1),
     ylim = c(min(y.axis - .1), max(y.axis + .1)), main = "", cex = .6, yaxs = "i", xaxs = "i")    
box(bty = "l")
segments((mean.vec.order - sd.vec.order), y.axis, (mean.vec.order + sd.vec.order), y.axis)
segments(min.vec.order, y.axis, max.vec.order, y.axis, lty = 2)
axis(1, at = seq(0,3,by=.5), labels =  seq(0,3,by=.5), tick = T, cex.axis = .7, mgp = c(2,.5,0))
axis(2, at = y.axis, label = var.names.order, las = 1, tick = T, cex.axis = .7,
     mgp = c(2,3.2,0), hadj =.5)

# Gráfico 2 - Regressão------------

# Com heterocedasticidade
plot_summs(reg3, reg1, reg2, model.names = c("Interativo", "Turno", 
                                             "Competição"), 
           legend.title = "Modelos")


# Apêndice Metodológico------------------

# Histogramas de cada variável-----------------
ggplot(banco, aes(x = TURNOUT)) +
  geom_histogram()

ggplot(banco, aes(x = COMPETICAO)) +
  geom_histogram()

ggplot(banco, aes(x = QTD_CANDIDATOS)) +
  geom_histogram()

ggplot(banco, aes(x = IDHM_L)) +
  geom_histogram()

ggplot(banco, aes(x = IDHM_R)) +
  geom_histogram()

ggplot(banco, aes(x = LOGTAMANHO)) +
  geom_histogram()

# Exploração dos dados--------------

banco <- banco %>% mutate(TURNO_CAT = ifelse(TURNO == 1, "Dois Turnos",
                                             "Um Turno"))
# Gráfico A7

ggplot(data = banco, mapping = aes(x = TURNOUT, y = ..density..)) + 
  geom_freqpoly(mapping = aes(colour = TURNO_CAT))


# Gráfico A8
ggplot(banco, aes(x = COMPETICAO, y = TURNOUT)) +
  geom_point(alpha = 1 / 100) +
  coord_cartesian(xlim = c(0,1))

# Gráfico A9

ggplot(banco, aes(x = IDHM_E, y = IDHM_R)) +
  geom_point() +
  geom_smooth(method = "lm")
cor.test(banco$IDHM_E, banco$IDHM_R)


# Análise dos resíduos-----------

residuos <- residuals(reg3)
preditos <- predict(reg3)

erro <- data.frame (residuos, preditos)

# TABELA A1
summary(erro$residuos)

# GRÁFICO A10
ggplot(erro, aes(residuos, ..density..)) +
  geom_density()

# GRÁFICO A11
qplot(erro$preditos, erro$residuos) +
  geom_hline(yintercept = 0, colour = 'blue')

# BP TEST

bptest(reg3)
bptest(reg2)
bptest(reg1)

# Tabelas de Regressão---------------

# Tabela A2: Regressão OLS simples

export_summs (reg3, reg1, reg2)

# Tabela A3: Regressão OLS erros padrões robustos

export_summs(reg3.1, reg1.1, reg2.1)