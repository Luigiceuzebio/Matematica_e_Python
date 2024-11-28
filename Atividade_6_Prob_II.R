permanencia_em_dias <- c(1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 7, 7, 8)

tabela_frequencia <- table(permanencia_em_dias)
print("Tabela de Frequência:")
print(tabela_frequencia)

media <- mean(permanencia_em_dias)
moda <- as.numeric(names(tabela_frequencia[which.max(tabela_frequencia)]))
mediana <- median(permanencia_em_dias)
desvio_padrao <- sd(permanencia_em_dias)

print(paste("Média:", media))
print(paste("Mediana:", mediana))
print(paste("Moda:", moda))
print(paste("Desvio Padrão:", desvio_padrao))

