# Generar datos simulados
set.seed(123)

# Definir los parámetros de las distribuciones normales
media_grupo1 <- 100
sd_grupo1 <- 15
media_grupo2 <- 110
sd_grupo2 <- 15

# Generar datos para cada grupo
grupo1 <- rnorm(n = 30, mean = media_grupo1, sd = sd_grupo1)
grupo2 <- rnorm(n = 30, mean = media_grupo2, sd = sd_grupo2)

# Realizar una prueba t para muestras independientes
resultado <- t.test(grupo1, grupo2, var.equal = FALSE)

# Mostrar resultados
print(resultado)

# Información adicional sobre la prueba t
print("Media del grupo 1:", mean(grupo1))
print("Media del grupo 2:", mean(grupo2))
print("Diferencia de medias:", mean(grupo2) - mean(grupo1)) 

# Se compararon los grupos "grupo1" y "grupo2"

# Resultado:
#   - Estadístico de prueba (t): -3.7926
#   - Grados de libertad (df): 56.559 (aproximado)
#   - p-valor: 0.0003646 (muy significativo)
#   - Hipótesis alternativa: las medias de los grupos son diferentes

# Intervalo de confianza del 95% para la diferencia de medias:
#   - Límite inferior: -20.448139
#   - Límite superior: -6.315124 
#   (valores negativos indican que la media de grupo1 es menor)

# Valores estimados:
#   - Media de grupo1: 99.29344
#   - Media de grupo2: 112.67508

# Interpretación general:
#   - Existe evidencia estadísticamente significativa (p-valor < 0.05) 
#     para rechazar la hipótesis nula de igualdad de medias.
#   - El intervalo de confianza indica que la verdadera diferencia 
#     entre las medias poblacionales de los grupos está entre 
#     -20.45 y -6.32 unidades (aproximadamente). 
#   - Como el intervalo de confianza solo contiene valores negativos, 
#     podemos inferir que la media del grupo1 es probablemente 
#     menor que la media del grupo2.
