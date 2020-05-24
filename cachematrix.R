## I first stablished that x is a matrix; 
then I stablished the value of the matrix 
and the inverse
set is the method to set the matrix
get is the function to get the matrix
inverse is the function to get the inverse of the matrix
setInverse and getInverse set and get the inverse of the matrix respectively
finally, the value that must be returned is a list of the methods

makeCacheMatrix <- function (x=matrix()){
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function()x
	setinverse<-function(inverse) m<<-inverse
	getinverse<-function()m
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)	
	}

## This function is to calculate the 
inverse of the matrix stablished in 
the precedent function. First checks
 if the inverse has already been done 
 to take it from the cache. 
 If not, if calculates it.
 data gets the matrix from the other environment

cacheSolve<- function(x,...){
	m<-x$getinverse()
    if(!is.null(m)){
    	message("getting cached data")
    	return(m)
    }    
    data<-x$get()
    m<-inverse(data,...)
    x$setinverse(m)
    m
}
