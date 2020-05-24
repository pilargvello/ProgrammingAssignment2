
## I first stablished that x is a matrix; then I stablished the value of the matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {
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

## Write a short comment describing this function
## This function is to calculate the inverse of the matrix stablished in the precedent function. First checks if the inverse has already been done to take it from the cache. If not, if calculates it.

cacheSolve <- function(x, ...) {
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
