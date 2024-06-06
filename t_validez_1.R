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