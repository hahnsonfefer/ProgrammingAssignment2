## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Use the makeCacheMatrix to do the following 4 goals:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

## This will return the inverse of the matrix. First it checkes to see if the
## inverse task has already executed, If so, it bypasses that task. If not,
## it run the inverse.

    
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}


## Make sure you define the matrix as x. 
## Example: 

## > x = rbind(c(1, -10), c(-2, 1))
## > a = makeCacheMatrix(x)
## > 
## > a$get()
## [,1] [,2]
## [1,]    1  -10
## [2,]   -2    1
## > 
## > 
## > cacheSolve(a)
## [,1]        [,2]
## [1,] -0.05263158 -0.52631579
## [2,] -0.10526316 -0.05263158
## > 
## > 
## 
## run cacheSolve to see if the code is checked any cached data. 
## 
## 
## > cacheSolve(a)
## getting cached data.
## [,1]        [,2]
## [1,] -0.05263158 -0.52631579
## [2,] -0.10526316 -0.05263158
## >



