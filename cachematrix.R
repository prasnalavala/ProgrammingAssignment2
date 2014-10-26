# Matrix inverse can be costly so it is better to store it and retrieve it, 
# rather than to compute the inverse repeatedly.
# In this assignment, makeCacheMatrix is a function that returns a list of functions.
# It performs two tasks: 1) store a matrix, 2) store a cached value of the inverse of that matrix

# following are the functions
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the cached value of that inverse matrix
makeCacheMatrix <- function(x = matrix()) {
# initializing empty cache and set to null
        cache <- NULL
        setMatrix <- function(a) {
                x <<- a # assigns a new value to the matrix
                cache <<- NULL # once the value is assigned to the matrix, it can be cleared from cache
        }
        getMatrix <- function() {
                x # 
        }
        Matrixinverse <- function(inv) {
                cache <<- inv
        }
        getinverse <- function() {
                cache
        }
        list(setMatrix=setMatrix, getMatrix=getMatrix, Matrixinverse=Matrixinverse, getinverse=getinverse)
}


# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.
cacheSolve <- function(x, ...) {
inv2 <- x$getinverse()
        if(!is.null(inv2)) {
                return(inv2)
        }
        data <- x$getMatrix()
        inv2 <- solve(data)
        x$cacheInverse(inv2)
        inv2        ## Return a matrix that is the inverse of 'x'
}
