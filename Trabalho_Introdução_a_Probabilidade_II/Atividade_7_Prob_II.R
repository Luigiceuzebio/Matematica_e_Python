# Carregar os dados
dt <- read.table("http://dcm.ffclrp.usp.br/~rrosales/aulas/cancer.txt", header=TRUE)
names(dt)

# Medidas de posição e variabilidade para Idade
idade_media <- mean(dt$Idade)
idade_mediana <- median(dt$Idade)
idade_desvio_padrao <- sd(dt$Idade)
idade_variancia <- var(dt$Idade)

# Medidas de posição e variabilidade para Glicose (GL)
gl_media <- mean(dt$GL)
gl_mediana <- median(dt$GL)
gl_desvio_padrao <- sd(dt$GL)
gl_variancia <- var(dt$GL)

# Exibindo os resultados
idade_medidas <- c("Média" = idade_media, "Mediana" = idade_mediana, "Desvio Padrão" = idade_desvio_padrao, "Variância" = idade_variancia)
gl_medidas <- c("Média" = gl_media, "Mediana" = gl_mediana, "Desvio Padrão" = gl_desvio_padrao, "Variância" = gl_variancia)

idade_medidas
gl_medidas

# Calculando para cada tipo de diagnóstico
idade_medidas_por_diagnostico <- aggregate(Idade ~ Grupo, data = dt, 
                                           FUN = function(x) c(Media = mean(x), Mediana = median(x), 
                                                               Desvio_Padrão = sd(x), Variância = var(x)))

gl_medidas_por_diagnostico <- aggregate(GL ~ Grupo, data = dt, 
                                        FUN = function(x) c(Media = mean(x), Mediana = median(x), Desvio_Padrão = sd(x), Variância = var(x)))

# Exibindo os resultados
idade_medidas_por_diagnostico
gl_medidas_por_diagnostico

# Filtrando os dados para Falso Negativo (Grupo 1) e Falso Positivo (Grupo 4)
falso_negativo <- dt[dt$Grupo == 1, "Idade"]
falso_positivo <- dt[dt$Grupo == 4, "Idade"]

# Boxplot para Idades dos Falso Negativos (Grupo 1)
boxplot(falso_negativo,
        main = "Boxplot das Idades - Falso Negativo",
        ylab = "Idade")

# Boxplot para Idades dos Falso Positivos (Grupo 4)
boxplot(falso_positivo,
        main = "Boxplot das Idades - Falso Positivo",
        ylab = "Idade")


# Filtrando os dados para os grupos 2 (Negativo) e 3 (Positivo)
akp_grupo2 <- dt[dt$Grupo == 2, "AKP"]
akp_grupo3 <- dt[dt$Grupo == 3, "AKP"]

# Boxplot para AKP no Grupo 2 (Negativo)
boxplot(akp_grupo2,
        main = "Boxplot de AKP - Grupo 2 (Negativo)",
        xlab = "Negativo",
        ylab = "AKP")

# Boxplot para AKP no Grupo 3 (Positivo)
boxplot(akp_grupo3,
        main = "Boxplot de AKP - Grupo 3 (Positivo)",
        ylab = "AKP")


