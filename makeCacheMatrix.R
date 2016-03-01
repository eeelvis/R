# I am use the structure as makeVector() and cachemean()
# Build 2 functions makeCacheMatrix() and cacheSolve()
# Example:
# > source("cachematrix.R")
# > matrixA<-makeCacheMatrix(matrix(c(1:8,10),3,3))
# > cacheSolve(matrixA)
# > cacheSolve(matrixA)
# Cache when calling cacheSolve() the second time will be used

# makeCacheMatrix() build a list that stores a matrix and its inverse  
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
