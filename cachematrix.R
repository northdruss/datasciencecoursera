## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        inv = NULL
        set = function(y) {
               
                x <<- y 
                inv <<- NULL
                
                ## assigns values outside the current environment using <<-
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)
        ##         this list is used as the input to cacheSolve()
        
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## returns inverse of matrix put into makeCacheMatrix
        
        inv = x$getinv()
        
        
        if (!is.null(inv)){
                return(inv)
        ## checks to see if inverse is already calculated and takes it from cache
        }
        
        mat.data = x$get()
        inv = solve(mat.data, ...)
        ## calculates the inverse.
        
        
        
        x$setinv(inv)
        ## sets inv to the value of the inverse
        return(inv)
}
