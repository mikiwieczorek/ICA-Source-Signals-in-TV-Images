library(ica)
library(fastICA)
#Data
load("~/file_path/TVimages.rdata")

TV.plot = function(temp,i) {
  image(1:225,1:225,matrix(temp[,i],225,225),col=gray((0:225/225)))
}
par(mfrow=c(2,2),mar=c(0,0,0,0),xaxt="n",yaxt="n")
for (i in 1:4) {
  TV.plot(TVimages,i)
  }
reset_par()  # need to have Reset_Plotting_Parameters.rds loaded


#k=2
Results2 = fastICA(TVimages,n.comp=2)
attributes(Results2)
#The estimated sources images are contained in the columns of the matrix 50,2625×k matrix S.  
#To view them as images, use the image command as shown below.

par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(1-Results2$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results2$S[,2],225,225),col=gray((0:225/225)))

#k=3
Results3 = fastICA(TVimages,n.comp=3)
attributes(Results3)
par(mfrow=c(2,3),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results3$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results3$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results3$S[,3],225,225),col=gray((0:225/225)))
         
#k=4
Results4 = fastICA(TVimages,n.comp=4)
attributes(Results4)
par(mfrow=c(2,4),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, 1- matrix(Results4$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results4$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results4$S[,3],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results4$S[,4],225,225),col=gray((0:225/225)))

#k=5
Results5 = fastICA(TVimages,n.comp=5)
attributes(Results5)
par(mfrow=c(3,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, 1- matrix(Results5$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results5$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results5$S[,3],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results5$S[,4],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results5$S[,5],225,225),col=gray((0:225/225)))
#Or
for (i in 1:5){
  image(1:225, 1:225, matrix(Results5$S[,i],225,225),col=gray((0:225/225)))
}
#k=6
Results6 = fastICA(TVimages,n.comp=6)
attributes(Results6)

#Image j=1
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,1],225,225),col=gray((0:225/225)))

#Image j=2
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,2],225,225),col=gray((0:225/225)))

#Image j=3
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,3],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,3],225,225),col=gray((0:225/225)))

#Image j=4
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,4],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,4],225,225),col=gray((0:225/225)))

#Image j=5
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,5],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,5],225,225),col=gray((0:225/225)))

#Image j=6
par(mfrow=c(2,2),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results6$S[,6],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(1-Results6$S[,6],225,225),col=gray((0:225/225)))



#k=7
Results7 = fastICA(TVimages,n.comp=7)
attributes(Results7)
image(1:225, 1:225, 1- matrix(Results7$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results7$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results7$S[,3],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results7$S[,4],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results7$S[,5],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results7$S[,6],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results7$S[,7],225,225),col=gray((0:225/225)))


#k=11
Results11 = fastICA(TVimages,n.comp=11)
attributes(Results8)
par(mfrow=c(3,4),mar=c(0,0,0,0), xaxt = "n", yaxt="n")
image(1:225, 1:225, matrix(Results11$S[,1],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results11$S[,2],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results11$S[,3],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results11$S[,4],225,225),col=gray((0:225/225)))
image(1:225, 1:225, 1- matrix(Results11$S[,5],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results11$S[,6],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results11$S[,7],225,225),col=gray((0:225/225)))
image(1:225, 1:225, matrix(Results11$S[,11],225,225),col=gray((0:225/225)))
#Or
for (i in 1:11){
  image(1:225, 1:225, matrix(Results11$S[,i],225,225),col=gray((0:225/225)))
}
