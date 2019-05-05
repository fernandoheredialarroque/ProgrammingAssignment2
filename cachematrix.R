## Put comments here that give an overall description of what your
## functions do	

## Step 1__ makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse 

makeCacheMatrix <- function(m = matrix()) {

i <- NULL 
 
set <- function( matrix ) { 
m <<- matrix 
i <<- NULL 
} 
  
get <- function() { 
## Return the matrix 
m 
} 

 setInverse <- function(inverse) { 
i <<- inverse 
} 
 
getInverse <- function() { 
 
i 
} 
 
 
## Return a list of the methods 
list(set = set, get = get, 
setInverse = setInverse, 
getInverse = getInverse) 
} 


## Step 2__ cacheSolve: This function computes the inverse of the special "matrix" returned
## by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has
##not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

m <- x$getInverse() 

if( !is.null(m) ) { 

   message("getting cached data") 
   return(m) 
} 

data <- x$get() 

m <- solve(data) %*% data 
 
x$setInverse(m)
 
        ## Return a matrix that is the inverse of 'x'
m
}
