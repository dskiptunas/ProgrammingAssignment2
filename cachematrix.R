## Put comments here that give an overall description of what your
## functions do

## more to come when completed

makeCacheMatrix <- function(x = matrix()) {
        z<-NULL
        set<-function(y){
                x<<-y
                z<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) z<<- solve
        getmatrix<-function() z
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}



## more to come


cacheSolve <- function(x, ...) {
         z<-x$getmatrix()
         if(!is.null(z)){
                message("finding cached data")
                return(z)
        }
         matrix<-x$get()
         z<-solve(matrix, ...)
         x$setmatrix(z)
         z
 }
        ## Return a matrix that is the inverse of 'x'

dan <- matrix(data = c(4,2,7,6), nrow = 2, ncol = 2)
dan2 <- makeCacheMatrix(dan)
cacheSolve(dan2)

