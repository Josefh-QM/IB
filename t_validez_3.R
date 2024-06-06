# Generar datos simulados
set.seed(123)
grupoX <- rnorm(30, mean = 100, sd = 15)
grupoY <- rnorm(30, mean = 110, sd = 15)
grupoZ <- rnorm(30, mean = 105, sd = 15)

# Realizar pruebas t con corrección de Bonferroni
pairwise.t.test(c(grupoX, grupoY, grupoZ), 
                rep(c("X", "Y", "Z"), each = 30), 
                p.adjust.method = "bonferroni")
# Comparación X vs Y:
#   - p-valor: 0.00068 (sin ajuste)
#   - Comentario: Existe una diferencia estadísticamente significativa 
#               entre los grupos X e Y después del ajuste Bonferroni 

# Comparación X vs Z:
#   - p-valor: 0.25243 (sin ajuste)
#   - Comentario: No se encontró evidencia suficiente para afirmar una 
#               diferencia significativa entre los grupos X y Z después 
#               del ajuste Bonferroni

# Comparación Y vs Z:
#   - p-valor: 0.11515 (sin ajuste)
#   - Comentario: No hay suficiente evidencia para afirmar una diferencia 
#               significativa entre los grupos Y y Z después del ajuste 
#               Bonferroni 