#Tasas de Decremento Múltiple by Act. Riquet Zequeira Fernández
library(actuar)
#Datos simulados
set.seed(42)
n<-1000
edad<-sample(20:70,n,replace=TRUE)
evento<-sample(c("Fallecimiento","Retiro","Otro" ), n, replace=TRUE, prob=c(0.1, 0.2, 0.7))
datos<-data.frame(edad,evento)
#Calcular tasas de decremento
#Calcular la frecuencia de cada tipo de evento por edad
tabla_decrementos<-table(datos$edad, datos$evento)
tasas_decremento<-prop.table(tabla_decrementos, 1)
print(tasas_decremento)
#Graficar las tasas de decremento
library(ggplot2)
#Convertir a data frame para graficar
tasas_df<-as.data.frame(as.table(tasas_decremento))
colnames(tasas_df)<-c("Edad","Evento","Tasa")
#Graficar
ggplot(tasas_df,aes(x=as.numeric(Edad),y=Tasa, color=Evento, group=Evento))+geom_line()+labs(title="Tasas de Decremento por Edad", x = "Edad", y = "Tasa de Decremento")
