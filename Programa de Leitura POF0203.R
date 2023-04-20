# LEITURA DOS DADOS DA POF 2002-2003 #
setwd("....")

# REGISTRO - DOMICILIO
DOMICILIO <- 
  read.fwf("T_DOMICILIO.txt" 
           , widths = c(2,2,3,1,2,2,11,11,2,2,2,1,2,2,2,1,1,1,1,1,1,1,1,1,12)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ","DIG_VER", "NUM_DOM", 
                           "EST_GEO","PESO", "PESO_FINAL", "TEORICO_COL", 
                           "REAL_COL","QUANTI_MORAD","TIPO_DOMIC", "QUANT_COM", 
                           "COM_DORM", "QUANT_BAN", "ABAST_AGUA","ESC_SANIT", 
                           "COND_OCUP", "ORIGEM_EL", "MATERIAL_PRED", 
                           "PAVIM_RUA","TEMP_MORAD", "QUANT_UC", 
                           "CONTRAT_DOC", "REND_TOT")
           , dec=".")

saveRDS(DOMICILIO,"DOMICILIO.rds")
domicilio <- readRDS("DOMICILIO.rds")
write.csv(DOMICILIO,"Domicilio0203.csv", row.names=TRUE)

# REGISTRO - MORADOR
MORADOR <- 
  read.fwf("T_MORADOR.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,1,1,1,2,2,4,3,7,6,1,2,2,2,
                        1,3,10,10,1,1,1,1,1,2,12,1,5,5,3)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "COD_INFORMANTE", "COD_UC", 
                           "COND_PRESENCA","SEXO", "DATA_NASC", "MES_NASC", 
                           "ANO_NASC", "IDADE","IDADE_DIAS", "IDADE_MESES", 
                           "FREQ_ESC", "ESCOLARIDADE", "ULT_SERIE",
                           "ANOS_ESTUDO", "COR_RACA", "RELIGIAO", "PESO_ORIG", 
                           "ALTURA_ORIG", "DESPESA", "RENDIMENTO", 
                           "CARTAO_CRED","CHEQ_ESP", "TIT_PLANO", "NUM_BEN", 
                           "RENDA_TOTAL", "COD_IMPUT", "PESO_IMPUT", 
                           "ALTURA_IMPUT", "REST_ALTURA")
           , dec=".")

saveRDS(MORADOR,"MORADOR.rds")
morador <- readRDS("MORADOR.rds")
write.csv(MORADOR,"Morador0203.csv", row.names=TRUE)

# REGISTRO - CONDICOES DE VIDA DA UNIDADE DE CONSUMO
COND_VIDA <- 
  read.fwf("T_CONDICOES_DE_VIDA.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                        1,1,1,1,1,1,1,11,12,11)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_INFO", "COD_REND", 
                           "COD_ALIM","TIPO_ALIM", "RAZAO_ALIM", "SERV_AGUA", 
                           "COL_LIXO", "ILUM_RUA","ESC_AGUA", "FORNEC_EL", 
                           "PROBL_ESP", "PROBL_VIZ", "PROBL_ESC", "PROBL_GOT", 
                           "PROBL_FUND", "PROBL_MAD", "PROBL_POL", "PROBL_VIOL", 
                           "COND_MORAD", "ATRAS_ALUG", "ATRAS_SERV", 
                           "ATRAS_BENS", "GAST_ALIM", "REND_TOTAL", "REND_MIN")
           , dec=".")

saveRDS(COND_VIDA,"COND_VIDA.rds")
cond_vida <- readRDS("COND_VIDA.rds")
write.csv(COND_VIDA,"Cond_vida0203.csv", row.names=TRUE)

# REGISTRO - INVENTARIO DE BENS DURAVEIS DA UC
INVENTARIO <- 
  read.fwf("T_INVENTARIO.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,5,4,2,1,1,2,12,1 )
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_QUAD", "COD_ITEM", "QUANTI_BEM",
                           "AQUIS_BEM", "EST_BEM", "OBT_AQUIS", "RENDA_TOT", "COD_IMPUT")
           , dec=".")

saveRDS(INVENTARIO,"INVENTARIO.rds")
inventario <- readRDS("INVENTARIO.rds")
write.csv(INVENTARIO,"Inventario0203.csv", row.names=TRUE)

# REGISTRO - REGISTROS ESPECIAIS COM MEDICAMENTOS E ASSISTENCIA A SAUDE
DESPESAESPEC <- 
  read.fwf("T_DESPESA_ESP.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,5,5,11,1,2,16,12,1,5,5,5,5,1,1)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "COD_INFORM", "NUM_QUAD", 
                           "COD_ITEM","COD_LOCAL", "VALOR_ITEM", "COD_OBTEN", 
                           "FATOR_ANUA", "VALOR_DESP","REND_TOT", "COD_IMPUT", 
                           "DEFLAT", "QUANT_ITEM", "COD_UNID",
                           "COD_PESO", "COD_ORIGEM", "COD_CARACT")
           , dec=".")

saveRDS(DESPESAESPEC,"DESPESAESPEC.rds")
despesasespec <- readRDS("DESPESAESPEC.rds")
write.csv(DESPESAESPEC,"DespesasEspec0203.csv", row.names=TRUE)

# REGISTRO - RENDIMENTO E DEDUCOES INDIVIDUAL
RENDIMENTO <- 
  read.fwf("T_RENDIMENTOS1.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,2,1,11,1,11,11,11,2,2,16,16,16,
                        12,1,8,8,1)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "COD_INFORMANTE", "NUM_QUAD",
                           "COD_OCUP","COD_REMUN", "VALOR_REND", "COD_EXIS", 
                           "DEDUC_PREVID","DEDUC_IMPOS","DEDUC_OUTROS", 
                           "NUM_MESES", "FATOR_ANUA", "VALOR_REND", 
                           "VALOR_DEDPREV","VALOR_DEDIMPOS", "VALOR_DEDOUTROS",
                           "REND_TOT", "COD_IMPUT","DEFLAT", "COD_OCUP", 
                           "COD_ATIV", "COD_TRAB")
           , dec=".")

saveRDS(RENDIMENTO,"RENDIMENTO.rds")
rendimento <- readRDS("RENDIMENTO.rds")
write.csv(RENDIMENTO,"Rendimento0203.csv", row.names=TRUE)

# REGISTRO - DESPESAS COM SERVICOS DOMESTICOS
SERVDOMEST <- 
  read.fwf("T_SERVICO_DOMS.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,5,11,11,12,1,2,16,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_QUAD", "COD_ITEM", 
                           "VALOR_ITEM","VALOR_INSS", "EMP_DOM", "NUM_MES", 
                           "COD_OBTEN", "FATOR_ANUA","VALOR_DESP", "VALOR_INSS", 
                           "REND_TOT", "COD_IMPUT","DEFLAT")
           , dec=".")

saveRDS(SERVDOMEST,"SERVDOMEST.rds")
servdomest <- readRDS("SERVDOMEST.rds")
write.csv(SERVDOMEST,"ServDomest0203.csv", row.names=TRUE)

# REGISTRO - OUTRAS DESPESAS
OUTRASDESPESAS <- 
  read.fwf("T_OUTRAS_DESPESAS.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,5,5,1,11,1,2,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_QUAD", "COD_ITEM", 
                           "COD_LOCAL","COD_ESTAD", "VALOR_ITEM", "COD_OBTEN",
                           "FATOR_ANU", "VALOR_DESP","REND_TOT", "COD_IMPUT", 
                           "DEFLAT")
           , dec=".")

saveRDS(OUTRASDESPESAS,"OUTRASDESPESAS.rds")
outrasdespesas <- readRDS("OUTRASDESPESAS.rds")
write.csv(OUTRASDESPESAS,"OutrasDespesas0203.csv", row.names=TRUE)

# REGISTRO - OUTROS RENDIMENTOS E MOVIMENTCAO FINANCEIRA INDIVIDUAL
OUTROSRECI <- 
  read.fwf("T_OUTROS_RECI.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,5,11,11,2,2,16,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "COD_INFORM", "NUM_QUAD",
                           "COD_REND", "VALOR_RENDI", "DEDUC_REND",
                           "NUM_MESES", "FATOR_ANUA", "RENDI_BRUT", 
                           "REND_DEFLA", "REND_TOT","COD_IMPUT", "DEFLAT")
           , dec=".")

saveRDS(OUTROSRECI,"OUTROSRECI.rds")
outrosreci <- readRDS("OUTROSRECI.rds")
write.csv(OUTROSRECI,"OutrosReci0203.csv", row.names=TRUE)

# REGISTRO - DESPESAS VEICULO INDIVIDUAL
DESPESAVEICULO <- 
  read.fwf("T_DESPESA_VEICULO.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,5,5,1,11,1,2,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ","DIG_VER", "NUM_DOM", 
                           "NUM_UC", "EST_GEO","PESO", "PESO_FINAL", 
                           "NUM_INFORM", "NUM_QUADRO","COD_ITEM","COD_LOCAL", 
                           "COD_ESTADO","VALOR_ITEM","COD_OBTEN","FATOR_ANUA", 
                           "VALOR_DESP","RENDA_TOT", "COD_IMPUT", "DEFLAT")
           , dec=".")

saveRDS(DESPESAVEICULO,"DESPESAVEICULO.rds")
despesaveic <- readRDS("DESPESAVEICULO.rds")
write.csv(DESPESAVEICULO,"despesaveic0203.csv", row.names=TRUE)

# REGISTRO - DESPESA 12 MESES
DESPESA12 <- 
  read.fwf("T_DESPESA_12MESES.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,5,5,11,2,1,2,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_QUAD", "COD_ITEM", 
                           "COD_LOCAL","VALOR_ITEM", "NUM_MES", "COD_OBTE", 
                           "FATOR_ANU", "VALOR_DESP","REND_TOT", "COD_IMPUT", 
                           "DEFLAT")
           , dec=".")

saveRDS(DESPESA12,"DESPESA12.rds")
Despesa12 <- readRDS("DESPESA12.rds")
write.csv(DESPESA12,"Despesa120203.csv", row.names=TRUE)

# REGISTRO - DESPESA 90 DIAS
DESPESA90 <- 
  read.fwf("T_DESPESA_90DIAS.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,5,5,11,1,2,16,12,5,5,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_QUAD", "COD_ITEM", 
                           "COD_LOCAL","VALOR_ITEM", "OBTEN_ITEM", 
                           "FATOR_AN", "FATOR_DESP", "REND_TOT","COD_IMPUT", 
                           "DEF_FAT", "CONSUM_ORIG", "COD_IMPUTQUANT", 
                           "CONS_IMPUT")
           , dec=".")

saveRDS(DESPESA90,"DESPESA90.rds")
Despesa90 <- readRDS("DESPESA90.rds")
write.csv(DESPESA90,"Despesa900203.csv", row.names=TRUE)

# REGISTRO - DESPESAS
DESPESA <- 
  read.fwf("T_DESPESA.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,5,5,11,1,2,16,12,1,5,5,5,5,1,1)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL", "NUM_INFORM", "NUM_QUAD", 
                           "COD_ITEM","COD_LOCAL", "VALOR_ITEM", 
                           "COD_OBTEN", "FATOR_ANUA", "VALOR_DESP",
                           "REND_TOT", "COD_IMPUT", "DEFLAT", 
                           "QUANT_ITEM", "COD_UNID","COD_VOL", 
                           "COD_ORIG", "COD_CARACT")
           , dec=".")

saveRDS(DESPESA,"DESPESA.rds")
despesa <- readRDS("DESPESA.rds")
write.csv(DESPESA,"Despesa0203.csv", row.names=TRUE)

# REGISTRO - CADERNETA DESPESAS COLETIVA
CADERNETA <- 
  read.fwf("T_CADERNETA_DESPESA.txt" 
           , widths = c(2,2,3,1,2,1,2,11,11,2,2,5,5,16,5,5,11,1,2,8,16,12,1,5)
           , na.strings=c(" ")
           , col.names = c("REGISTRO", "UF", "SEQ", 
                           "DIG_VER", "NUM_DOM", "NUM_UC", "EST_GEO",
                           "PESO", "PESO_FINAL","NUM_QUAD", "NUM_GRUP", 
                           "COD_ITEM", "COD_LOCAL", "QUANT_ITEM", "COD_UNID", 
                           "COD_PESO","VALOR_ITEM", "COD_OBTEN","FATOR_ANUA", 
                           "QUANT_KG", "VALOR_DESP","REND_TOT", "COD_IMPUT", 
                           "DEFLAT")
           , dec=".")

saveRDS(CADERNETA,"CADERNETA.rds")
caderneta <- readRDS("CADERNETA.rds")
write.csv(CADERNETA,"Caderneta0203.csv", row.names=TRUE)
