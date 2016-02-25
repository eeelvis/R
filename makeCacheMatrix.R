
makeCacheMatrix <- function(m = matrix()) {

        inv <- NULL
        
        set <- function(y){
                m <<- y
                inv <<- NULL
        }
        
        get <- function() m
        
        setInv = function(solve) inv <<- solve
        
        getInv = function() inv
        
        list(set = set, get = get, setInv = setInv, getInv = getInv)
}

