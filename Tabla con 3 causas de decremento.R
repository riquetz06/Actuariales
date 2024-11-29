# Crear vectores con las poblaciones iniciales
poblacion_inicial <- c(10000, 9500, 9000, 8500, 8000, 7500, 7000, 6500, 6000, 5500)
edad <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)
prob_invalidez <- c(0.001, 0.002, 0.003, 0.005, 0.007, 0.010, 0.015, 0.020, 0.025, 0.030)
prob_vejez <- c(0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.002, 0.005, 0.020, 0.050)
prob_retiro <- c(0.000, 0.000, 0.000, 0.000, 0.000, 0.001, 0.003, 0.010, 0.020, 0.030)

# Crear un data frame con las probabilidades y las poblaciones iniciales
tabla_probabilidades <- data.frame(
  Edad = edad,
  Poblacion_Inicial = poblacion_inicial,
  Probabilidad_Invalidez = prob_invalidez,
  Probabilidad_Vejez = prob_vejez,
  Probabilidad_Retiro = prob_retiro
)

# Calcular las poblaciones afectadas por cada decremento
tabla_probabilidades$Invalidez <- tabla_probabilidades$Poblacion_Inicial * tabla_probabilidades$Probabilidad_Invalidez
tabla_probabilidades$Vejez <- tabla_probabilidades$Poblacion_Inicial * tabla_probabilidades$Probabilidad_Vejez
tabla_probabilidades$Retiro <- tabla_probabilidades$Poblacion_Inicial * tabla_probabilidades$Probabilidad_Retiro

# Mostrar la tabla
print(tabla_probabilidades)
