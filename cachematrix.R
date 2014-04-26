## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL

	## Get current result
	get <- function() x

	#Set new value on store
	set <- function(y){
		x <<- y
		m <<- NULL

	}

	setInverse <- function(d){
		#Return NULL of m not contain cached value
		#otherwise return cached value
		m <<- d
	}

	#Inverse of matrix or NULL if it ys impossible
	getInverse <- function()m

	list(get=get, set=set, getInverse=getInverse, setInverse=setInverse)

}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        #Try to get inverse of a matrix
        c <- x$getInverse()
        if(!is.null(c)){
        	message("getting cached data")
        	c
        }else{
        	data <- x$get() #Get current data 
        	m <- solve(data,...) #Inverse the matrix 
        	x$setInverse(m)	#Add in cache result value
        	m #return cached value
        }

}
