## Put comments here that give an overall description of what your
## functions do

## Write a pair of functions that will make a cache matrix and then solve the cache matrix,
## to solve and store the inverse of the cache matrix

## Write a short comment describing this function

## This first function will make a new "inverse" matrix which will be called and used
## in a later function, which will be taking the inverse of the stored matrix.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    
    get <- function() x
    setinverse <- function(inversemat) inverse <<- inversemat
    getinverse <- function() inverse
    list(set = set, 
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function:
## This will now solve and print the inverse of the matrix that was
## previously stored in the function "makeCacheMatrix".

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of inputted 'x'
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("retrieving cached matrix")
        ## Note that the above message does not show up on the 
        ## first run when testing the code, becuase there is
        ## no matrix stored in the cache. The message printed
        ## on the second run of the code.
        return(inverse)
    }
    
    data <- x$get()
    inverse <- solve(data)
    x$setinverse(inverse)
    inverse
}
