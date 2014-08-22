## Put comments here that give an overall description of what your
## functions do

## The function contains 4 function to set and get matrix and inverse of matrix

##The inverse of matrix is calculated and stored in function scope

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix<-NULL              ##Store the inverse of Matrix x
    x<-matrix(x,nrow=sqrt(length(x)))   ##Tranfers the vector into a square matrix
    
    setMatrix<-function(m) {		##sets the matrix 
      x<<-matrix(m,nrow=sqrt(length(m)))
      inverseMatrix<-NULL
    }
    
    getMatrix<-function(){x}  ## Returns the matrix
    
    getInverse<-function(){   ## Returns the inverse of matrix
      inverseMatrix 
    }
    
    setInverse<-function(inv){  ## sets the inverse of matrix with the argument it gets
      inverseMatrix<<-inv
    }
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function checks if the inverse matrix is null?
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
