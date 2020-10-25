# основы: синтаксис
"Hell0 R!"
date()
1+2
1/(2+3)==5
1:3 #вектор
as.matrix(1:3) #матрица

seq(from = 1, to = 3, by = .5)
order (1:3, decreasing = TRUE)
rev(1:3)
i<- sample(5)
i
j <- order(i)
list(i, j)
j
i[order(i)]
x<-"Привет"
y<-"Мир"
z<-c(x,y)
x
y
z
print(z)

# графики и экспорт
install.packages("ggplot2")
library(ggplot2)
qplot(data = iris, x = Sepal.Length, y = Petal.Length)
qplot (data = iris,
       x = Sepal.Length, 
       y = Petal.Length,
       color = Species,
       size = Petal.Width,
       alpha = I(0.7))
# функции
fx<-function(x) x*x
f<-function(a,b) fx(a)+fx(b)
f(2,3)
# плавающая точка
is.integer(7)
round(7)==7
is.integer(as.integer(7))

0.33==3*0.11
0.45==3*0.15
round(0.45, 2)== round(3*0.15, 2)
# векторы
x<- c(7, 8, 10, 45) 
is.vector(x)
y<- c(-7, -8, -10, -45)
x[1]
x+y
x+c(-7,-8)
x1<- c(123, 0, -10, 45) 
sort(x1)
summary(x1)
sum(x1)
# массивы
x<- c(1,2,3,4)
x.a<- array(x, dim=c(2,2))
dim(x.a)
typeof(x.a)
str(x.a)
attributes(x.a)
is.vector(x.a)
is.array(x.a)
# обращение к массивам
x.a <-array(x,dim=c(2,2))
#Получение значений
x.a[1,1]
x.a[,1]
#Вызов функции
which(x.a<=2)
rowSums(x.a)
#Операторы
x.b <-array (c(-1,-2,-3,-4), dim=c(2,2))
x.c <-x.a+x.b
x.c
# матрицы
m<-matrix(c(40,1,60,3), nrow=2)
m
is.array(m)
is.matrix(m)
# матрицы. специальные операторы
six.fives <-matrix(rep(5,6), ncol=3)
six.fives
m %*% six.fives
o<-c(10,20)
o
m%*% o
# матрицы. имена
rownames(m) <-c("трудодни","сталь")
colnames(m) <-c("автомобили","грузовики")
m

output <- c(20,10)
names(output) <- c("грузовики", "автомобили")
available <- c(1600,70)
names(available) <- c("трудодни","сталь")
m %*% output[colnames(m)]

apply (m,1,mean)
m
apply (m,2,mean)
#списки
my.lst <- list("exponential", 7, FALSE)
my.lst
names(my.lst) <- c("family", "mean", "is.symmetric")
my.lst
my.lst$family
# датафреймы
a.matrix <- matrix(c(35,8,10,4), nrow=2)
colnames(a.matrix) <-c("v1", "v2")
a.matrix
a.data.frame <-data.frame(a.matrix, logicals=c(TRUE,FALSE))
a.data.frame
a.data.frame$v1
a.data.frame[,"v1"]
a.data.frame[1,]
colMeans(a.data.frame)
rbind(a.data.list(v1=-3, v2=-5, logicals=TRUE))
rbind(a.data.frame,c(3,4,6))







