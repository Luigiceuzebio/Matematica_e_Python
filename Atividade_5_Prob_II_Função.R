calcular_medidas <- function(aprov, freq) {
  valores_repetidos <- rep(aprov, freq)
  
  media <- sum(aprov * freq) / sum(freq)
  moda <- aprov[which.max(freq)]
  mediana <- median(valores_repetidos)
  variancia <- var(valores_repetidos)
  
  return(c(media = media, moda = moda, mediana = mediana, variancia = variancia))
}

aprov <- c(4, 5, 6, 7)
freq_aprov <- c(126, 359, 1685, 4764)

reprov <- c(0, 1, 2, 3)
freq_reprov <- c(4764, 1685, 359, 126)

resultados_aprov <- calcular_medidas(aprov, freq_aprov)
resultados_reprov <- calcular_medidas(reprov, freq_reprov)

print("Resultados para aprovações:")
print(resultados_aprov)

print("Resultados para reprovações:")
print(resultados_reprov)


custo_por_reprovacao <- 200
custo_total_por_veiculo <- reprov * custo_por_reprovacao

media_custo <- sum(custo_total_por_veiculo * freq_reprov) / sum(freq_reprov)
variancia_custo <- sum(((custo_total_por_veiculo - media_custo)^2) * freq_reprov)/ (sum(freq_reprov) - 1)

print("Média do custo adicional por veículo: (em R$)")
print(media_custo)

print("Variância do custo adicional por veículo: (em R$)")
print(variancia_custo)

