##### Cargue de datos #####
#Carga archivo
Data5=read.csv("C:\\Users\\julia\\OneDrive\\Documents\\Especializacion\\ANALITICA DE DATOS PARA TOMA DE DECISIONES\\Top5SepOct.csv")

##### Exploración de datos #####
# Primeras 5 filas
head(Data5)

# Resumen estadístico simple
summary(Data5)

# Estructura de datos
str(Data5)

# Dimensiones de los datos
dim(Data5)

##### Exploración de datos usando gráficos #####
# Gráfico de dispersión (scatter plot)
plot(data$SEGURO, data$FOBDOL, main="Correlacion Seguro vs Valor en Dolares", xlab="SEGURO", ylab="FOBDOL")

# Gráfico de barras
barplot(table(data$COD_SAL), main="Gráfico de Barras", xlab="COD SAL", ylab="Frecuencia")

##### Generación de Tablas #####
# Tabla de frecuencia para una columna categórica
tabla_frecuencia(table(data$COD_PAI4))
print(tabla_frecuencia)

# Proporciones relativas en lugar de frecuencias
prop.table(tabla_frecuencia)

##### Correlación entre variables #####
# Correlacion pearson
cor.test(~FOBDOL+CANTI,data= Data5,method="pearson",conf.level=0.95)
