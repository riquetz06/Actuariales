#Tabla de mortalidad
# Instalar y cargar el paquete actuar
install.packages("actuar")
library(actuar)
# Crear una tabla de mortalidad simple
edad <- 0:100
qx <- 1 - exp(-0.0001 * exp(0.1 * edad))  # Probabilidad de muerte a cada edad
tabla_mortalidad <- data.frame(Edad = edad, qx = qx)
# Mostrar la tabla de mortalidad
head(tabla_mortalidad)
print(tabla_mortalidad)
