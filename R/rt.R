rt=function(n, df, ncp) 
    if (missing(ncp)) stats::rt(n, df) else
    rnorm(n, ncp)/sqrt(rchisq(n, df)/df)
	