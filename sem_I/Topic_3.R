# Q.1
rm(list=ls())
y=c(98,	19,	47,	137,	155,	270,	64,	69,	127,	292,	79,	
    81,	144,104,	240,	273,	141,	56,	117,	201,	130,	58,
    102,	170,	261,	158,29,102,	210,	189,	116,	46,	187,	
    101,	194,	93,	161,	222,	41,127,	179,	223,	33,	114,	
    76,	96,	78,	88,	137,	114,	56,	108,179,	318,	58,	58,	
    76,	272)
N=length(y)
n=8
z_=qnorm(0.025,lower.tail=F)
t_=qt(0.025,7,lower.tail = F)
sy_2=var(y)
var_Y_bar=(1/n-1/N)*sy_2
LL=UL=0;s_mean=0
for (i in 1:500)
{
  s=sample(y,8,replace = F)
  LL[i]=mean(s)-t_*sqrt((1/n-1/N)*var(s))
  UL[i]=mean(s)+t_*sqrt((1/n-1/N)*var(s))
}
a=ifelse(LL < mean(y) & mean(y) < UL,1,0)
mean(a)

x=c(98, 19, 47, 137, 155, 270, 64, 69, 127, 292, 79, 81, 144, 104, 240, 273, 141, 56, 117, 201, 130, 58, 
    102, 170, 261, 158, 29, 102, 210, 189, 116, 46, 187, 101, 194, 93, 161, 222, 41, 127, 179, 223, 33, 
    114, 76, 96, 78, 88, 137, 114, 56, 108, 179, 318, 58, 58, 76, 272)
N=length(x)
n=8
y=sample(x,n,F)
# Estimate of population mean (average area per village under paddy)
Y_bar=mean(y)
Y_bar
# Variance of Y_bar and SE of Y_bar
sy_2=var(x)
var_Y_bar=(1/n-1/N)*sy_2;
SE_Ybar=sqrt(var_Y_bar);
# Est. Variance of Y_bar and SE of Y_bar
S_Y_2=var(y)
Est_var_Y_bar=(1/n-1/N)*S_Y_2;
Est_SE_Ybar=sqrt(Est_var_Y_bar);
# CI for population mean
t_=qt(0.025,n-1,lower.tail = F)
Lower_limit=Y_bar-t_*SE_Ybar
Upper_limit=Y_bar+t_*SE_Ybar
cbind(Lower_limit, Upper_limit)

cat("95% CI for average area per village under paddy is","\n",Lower_limit, Upper_limit )

# Q.2
rm(list=ls())
y=c(1698, 1889, 1910, 1768, 1852, 1837, 1811, 1762, 1722, 1851, 1717, 1715,
    1791, 1908, 1801, 1800, 1893, 1771, 1709, 1772, 1667, 1690, 1811, 1816, 1731)
n=length(y);N=400;
Y_bar=mean(y) # Est. of population mean
Sy_2=var(y)
Est_Var_Y_bar=(1/n-1/N)*Sy_2
Est_SE_Ybar=sqrt(Est_Var_Y_bar)
t_=qt(0.01,n-1,lower.tail=F)
LL=Y_bar-t_*Est_SE_Ybar
UL=Y_bar+t_*Est_SE_Ybar
cbind(LL,UL)
rm(list=ls())
# Que.3
y=c(5, 6, 3, 3, 2, 3, 3, 3, 4, 4, 3, 2, 7, 4, 3,5, 4, 4, 3, 3, 4, 3, 3, 1, 2, 4, 3, 4, 2, 4)
N=14848;n=length(y)
yt_hat=N*mean(y)
Sy_2=var(y)
print(yt_hat)
a_hat=0.1*yt_hat/sqrt(N*(N-n)/n*Sy_2)
pnorm(a_hat,0,1,lower.tail = F)