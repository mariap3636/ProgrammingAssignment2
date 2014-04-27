## input foR this function is a square matriX.  Output is a list of functions 
## functions do


makeCacheMatrix <- function(x = matrix()) {

        im <- NULL
        set <- function(y) {
                x <<- y
                im <<- NULL
        }        
        
        
        get <- function() x
        setinvmat <- function(InvMat) im <<- InvMat
        getinvmat <- function() im
        list(set = set, get = get,
             setinvmat = setinvmat,
             getinvmat = getinvmat)

}


## input for the function cachesolve is the list of functions returned by makeCacheMatrix; it should calculate the matrix and save it in the cache.    

cacheSolve <- function(x=list(), ...) {
        ## Return a matrix that is the inverse of 'x'


       invmat <- x$getinvmat()#from cache
        if(!is.null(invmat)) {
                message("getting cached data")
                return(invmat)
        }

        mat <- x$get()
         invmat<- solve(mat)
         x$setinvmat(invmat)
         invmat


}
