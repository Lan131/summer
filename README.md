# summer
This packages seeks to implement summation notation and product notation (Sigma and Pi notation) in R in a style similar to symbolic algebraic systems.


## Installation: 
    
    if(!require(summer))

    { 
  
      install.packages("devtools")
      library(devtools)  
      devtools::install_github("mlanier/summer")
      library(summer)
     }else{
      library(summer)}


## R Topics documented

1. summation\_notation
2. product\_notation
3. Riemann Zeta Function
4. Complex Exponentiation 
5. Complex Zeta Function
##Sigma Notation

#### Usage
`summation_notation(i=1,n=100,formula="x")`
#### Arguments
 `i`    The start index of the summation.
 
 `n`   The end index of the summation. 
 
  `formula`    A string in terms of x to be parsed by the summation_notation function.
  
#### Details
   Summation notation will return errors messages if the formula does not contain any 'x' substrings. If the end user mixes 'x's and other variables the summation may run returning an incorrect value.
   
#### Examples   
![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/e123e2e8bb33d436849c093d6a227ac387a9ab5f)

`summation_notation(i=1,n=100,formula="x")`

![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/583f6259b306bbaaf552d77f75f0bedfe411b6aa)

`summation_notation(i=0,n=100,formula="x^4")`

##Pi notation
#### Usage
`product_notation(i=1,n=100,formula="x")`
#### Arguments
 `i`    The start index of the prodcut.
 
 `n`   The end index of the product. 
 
  `formula`    A string in terms of x to be parsed by the product_notation function.
  
#### Details
   Product notation will return errors messages if the formula does not contain any 'x' substrings. If the end user mixes 'x's and other variables the product may run returning an incorrect value.

#### Examples  

![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8f5b094d2eccfa70291eb6364d2da501ea3cb42)

`product_notation(i=1,n=6,formula="x")`

## Riemann Zeta Function

#### Usage
`Zeta(s=5)`
#### Arguments
 `s`    The argument of the Zeta functions.

  
#### Details
   This function calculates the Zeta function for a given argument s. 

#### Examples
Calculate Apery's Constant.

![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee3d2504b925362014d7260cb0eb808c522048fa)

`Zeta(3)`

## Complex Exponentiation

#### Usage
`c_Expo(a=2,b=7)`
#### Arguments
 `a`    The base
 `b`    The exponent

  
#### Details
   Consider the value *a* to the *b\*i*. *b* must be an integer. *a* to the *b\*i* is multivalued, this function gives only one value.    To check equivelence its reccomended that the user pass the returned value to the Mod function.

#### Examples
Calculate 2 to the 7*i*.

`c_Expo(2,7)`

## Complex Zeta Function

#### Usage
`c_Zeta(a=3,b=3)`
#### Arguments
 `a`    The real part of the argument *a*+*bi*.
 `b`    The imaginary part of the argument *a*+*bi*.

  
#### Details
   Experimental. This method uses a Monte Carlo calculation to evalulate the Euler integral. To check equivelence its recommended that the user pass the returned value to the Mod function.

#### Examples
Calculate the Zeta function evaluated at 2+2\**i

`c_Zeta(2,2)`



## Depends
stringr
pander
pracma


In the event that this package throws errors run the following in command:
   
    if (!require('pander')) {
     devtools::install_github('Rapporter/pander')
    }

    if (!require('stringr')) {
    install.packages('stringr')
    }


    if(!require('pracma')){
    install.packages('pracma')
    }

    library(pracma)
    library(pander)
    library(stringr)`
