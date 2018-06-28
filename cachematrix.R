##These functions will cache the inverse of a matrix 

##This function creates a special object matrix that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

}
#This is to start the inverse property 
x <- NULL
#This is to set the value of the matrix
set <- function(matrix) {
          m <<- matrix
          y <<- NULL
}
#This is to get the value of the matrix
get <- function() {
         #Return matrix
         m
}
#This is to set the inverse of the matrix 
setInverse <- function(inverse) {
         y <<- inverse
}
#This is to get the inverse of the matrix
getInverse <- function() {
         #Return inverse 
         y
} 
#Return list of methods
list(set=set, get=getInverse,
         setInverse=setInverse, 
         getInverse=getInverse)
     
##This function computes the inverse of the above function (makeCacheMatrix). If the inverse has
##already been calculated and the matrix hasn't changed, the this function should get the in

cacheSolve <- function(x, ...) {
        #Return a matrix that is the inverse of 'x'
}
m <- x$getInverse()
        #Return inverse if it's already set
if(!is.null(m)) {
        message("getting cached data")
        return(m)
}
#Get matrix from object
data <- x$get()
#Calculate inverse through matrix multiplication
m <- solve(data) % % data
#Set inverse of object
x$setInverse(m)
#Return matrix
m
}
