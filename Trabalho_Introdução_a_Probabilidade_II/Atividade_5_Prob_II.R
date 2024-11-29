aprov <- c(4, 5, 6, 7)
freq <- c(126, 359, 1685, 4764)
aprov_repetido <- rep(aprov, freq)

media_aprov <- sum(aprov*freq)/sum(freq)
moda_aprov <- aprov[which.max(freq)]
mediana_aprov <- median(aprov_repetido)
variancia_aprov <- var(aprov_repetido)

print(media_aprov)
print(moda_aprov)
print(mediana_aprov)
print(variancia_aprov)


reprov <- c(0, 1, 2, 3)
freq_reprov <- c(4764, 1685, 359, 126)
reprov_repetido <- rep(reprov, freq_reprov)

media_reprov <- sum(reprov*freq_reprov)/sum(freq_reprov)
moda_reprov <- reprov[which.max(freq_reprov)]
mediana_reprov <- median(reprov_repetido)
variancia_reprov <- var(reprov_repetido)

print(media_reprov)
print(moda_reprov)
print(moda_reprov)
print(variancia_reprov)

custo_por_reprov <- 200

media_despesa <- custo_por_reprov * media_reprov
variancia_despesa <- custo_por_reprov^2 * variancia_reprov

print(media_despesa)
print(variancia_despesa)