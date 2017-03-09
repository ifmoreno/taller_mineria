getwd()
camino<-"C:\\Users\\ifmor\\Desktop\\Mineria de Datos\\taller_mineria\\Taller 2\\Bases"
setwd(camino)
aut<-read.csv("auto.csv",header = TRUE,sep = ",",na.strings = "?")
#al leer poner cómo son los missing

fix(aut) #Muestra la base
summary(aut) #Muestra est. básicos 
pairs(aut[1:10,1:3]) #scatterplot matrix

##Punto 1
pairs(aut)
##Punto 2
mat_corr<-cor(aut[,1:8],use="pairwise.complete.obs")
mat_corr
##Punto3
reg_mult<-lm( mpg~cylinders+displacement+horsepower+weight+acceleration+year+origin, data = aut)
summary(reg_mult)
#Punto4
par(mfrow=c(2,2))
plot(reg_mult)
?aut
#primera gráfica a la izquierda arriba: la curvatura muestra que el modelo no esta
#capturando todo, puede existir una no linearidad
?plot
attach(aut)
#transformacion
reg_tra<-lm( mpg~log(displacement) + sqrt(weight) + year + I(year**2)+origin, data=aut)
summary(reg_tra)