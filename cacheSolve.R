cacheSolve <- function(x, ...) {
        m <- x$getInv()
        
        if(!is.null(m)) {
                message("... pegando dados!!!")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInv(m)
        m  
}