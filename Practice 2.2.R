library(datasets)
data("iris")
head(iris)


str(iris)


summary(iris)

fix(iris)

#Selection

students<-read.table('https://www.dipintothereef.com/uploads/3/7/3/5/37359245/students.txt',header=T, sep="\t", dec='.') # read data set from url

#selecting column

students$height


#R syntax: dataset[no row, no column]
students[,1]
students[1,1]
students[10,]
student$height[5]
students$height[5]

#subset

students$gender=="female"
f<- students$gender=="female"
female<-students[f,]

rownames(female)<-c("Shin","Joyce","Caro","Nicole","Joy")
female

data(iris)
iris$species
str(iris)
iris$Species
iris$Species=="setosa"
s<-iris$Species=="setosa"
setosa<-iris[s,]
setosa


iris$Species=="versicolor"
v<-iris$Species=="versicolor"
versicolor<-iris[v,]
versicolor

r<-iris$Species=="virginica"
virginica<-iris[r,]
str(virginica)
head(setosa)
head(versicolor)
head(virginica)

#sample
#sorting

ind1<-order(students$height)

#recoding
fix(students)
str(iris)


colors<-ifelse(students$gender=="male","blue","red")
students$color<-ifelse(students$gender=="male","blue","red")

students$gender<-ifelse(students$gender=="male","green","yellow")
students

tall<-students$height>=160
tall

giant<-students$height>=170
giant

not38<-students$shoesize!=38
not38

#practice 2.2
colors<-ifelse(iris$Species=="setosa","purple","not setosa")

ind2<-order(-iris$Sepal.Width)
ind2
datasets(iris)
str(iris)
str(setosa)
ind2
setosa<-iris$Sepal.Length<=5.0
setosa

data(iris)
colors<-ifelse(iris$Species=="setosa","purple",ifelse(iris$Species=="versicolor","blue","pink"))
colors
iris$colors<-ifelse(iris$Species=="setosa","purple",ifelse(iris$Species=="versicolor","blue","pink"))
colors
iris
ind2

iris$Sepal.Width[61]
iris[c("61"),]

#exercise:

iris$color<-ifelse(iris$Species=="setosa","purple", ifelse(iris$Species=="versicolor","blue","pink"))
iris[c(1,51,102),]
iris[order(iris$Sepal.Width, decreasing = T),]

