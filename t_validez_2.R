# Generar datos simulados
set.seed(123)
grupoA <- rnorm(30, mean = 100, sd = 15)
grupoB <- rnorm(30, mean = 110, sd = 15)
grupoC <- rnorm(30, mean = 105, sd = 15)
# Crear un data frame
datos <- data.frame(
  puntuacion = c(grupoA, grupoB, grupoC),
  grupo = factor(rep(c("A", "B", "C"), each = 30))
)
# Realizar ANOVA
modelo <- aov(puntuacion ~ grupo, data = datos)
# Mostrar resultados
summary(modelo)

#Valor de F: 7.432
#p-valor: 0.00105 (menor que 0.05)
#Como el p-valor es menor que 0.05, rechazamos la hipótesis nula de que las medias de los grupos son iguales.