# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


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
library(stringr)


summation_notation=function(i=1,n=10,formula)
{
  if(i>n)
  {print("It appears your bounds are mixed. i<n")
    return()}


  if(grepl("x+",toString(formula))==FALSE)
  {
    print("Your expression doesn't appear to be in terms of x. Please make sure it is only in terms of x.")

  }else{
    form=toString(str_replace_all(toString(formula), "x", "i"))


    sum=0

    for(j in i:n)
    {

      formula_temp=toString(str_replace_all(toString(form), "i", toString(j)))

      sum=sum+as.numeric(pander::evals(formula_temp)[[1]]$result)


    }

    return(sum)
  }

}



product_notation=function(i=1,n=10,formula)
{
  if(i>n)
  {print("It appears your bounds are mixed. i<n")
    return()}
  if(grepl("x+",toString(formula))==FALSE)
  {
    print("Your expression doesn't appear to be in terms of x. Please make sure it is only in terms of x.")

  }else{
    form=toString(str_replace_all(toString(formula), "x", "i"))
    product=1

    for(j in i:n)
    {

      formula_temp=toString(str_replace_all(toString(form), "i", toString(j)))

      product=product*as.numeric(pander::evals(formula_temp)[[1]]$result)


    }

    return(product)
  }

}



Zeta=function(s,fun=summation_notation)
{


  if(s<0)
  {
    B=-1*bernoulli(abs(s)+1)/(abs(s)+1)

    return(B[length(B)])


  }else{





    if(s==0)
    {
      return(-.5)

    }else{
      if(s==1)
      {
        print("Your series is divergent.")
        return()

      }else{
        if(round((1/.000000001)^(1/abs(s)))>1000)
        {num=700}else{num=n=round((1/.0000001)^(1/abs(s)))}

        Z=fun(i=1,n=num,formula=paste("1/x^",s))
        return(Z)
      }
    }

  }

}
