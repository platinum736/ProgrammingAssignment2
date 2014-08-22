## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix<-NULL              ##Store the inverse of Matrix x
    x<-matrix(x,nrow=sqrt(length(x)))
    
    setMatrix<-function(m) {
      x<<-matrix(m,nrow=sqrt(length(m)))
      inverseMatrix<-NULL
    }
    
    getMatrix<-function(){x}
    
    getInverse<-function(){
      inverseMatrix 
    }
    
    setInverse<-function(inv){
      inverseMatrix<<-inv
    }
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function checks if the invers matrix is null?
## if null it calculates the inverse of matrix and sets it 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  if(!is.null(m)){
    print ("Getting the cached inverse value")
    return(m)
  }
  mat<-x$getMatrix()
  inv<-solve(mat)
  x$setInverse(inv)
  
}
