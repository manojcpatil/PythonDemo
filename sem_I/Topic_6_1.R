rm(list=ls())
# Que_1
N_h=c(50000,35000,25000)
n_h=c(2000,1500,1500)
A_h=c(1050,790,450)
p_hat_h=A_h/n_h
w_h=N_h/sum(N_h)
p_hat_st=sum(w_h*p_hat_h) # Estimate of population proportion under startified
cat("Estimate of population proportion who favour to Mr. X is \n",
    round(p_hat_st,4))
var_p_hat_st=sum(w_h^2*(N_h-n_h)/(N_h*(n_h-1))*p_hat_h*(1-p_hat_h))
var_p_hat_st;
SE_p_hat_st=sqrt(var_p_hat_st);SE_p_hat_st

# Que_3
N_h=c(12,24,19,13,9)
s1=c(3.5,2.7,1.1,1.9)
s2=c(2.4,6.9,3.7,2.8,3.4,2.6)
s3=c(1,1.3,2.9,1.6,3.4)
s4=c(1,0,2.3,0.5)
s5=c(5.8,4.9) 
l=list(s1,s2,s3,s4,s5)
n_h=unlist(lapply(l, length))
Ybar_h=unlist(lapply(l, mean))
w_h=N_h/sum(N_h)
Ybar_st=sum(w_h*Ybar_h)
cat("Estimate of average acres of corn per farm is \n", 
    round(Ybar_st,4)*10)
# To obtain Estimated var(Ybar_st)
Sh_2=unlist(lapply(l, var))
Est_Var_Ybar_st=sum((1/n_h-1/N_h)*w_h^2*Sh_2)
# To obtain Estimated var(Ybar_st) under proportional allocation
Est_Var_Ybar_st_prop=(1/sum(n_h)-1/sum(N_h))*sum(w_h*Sh_2)
# To obtain Estimated var(Ybar_st) under optimum allocation
Est_Var_Ybar_st_opt=1/sum(n_h)*(sum(w_h*sqrt(Sh_2)))^2-1/sum(N_h)*sum(w_h*Sh_2)
cbind(Ybar_st,Est_Var_Ybar_st,Est_Var_Ybar_st_prop,Est_Var_Ybar_st_opt)
# Relative efficiency of Ybar_st under Optimum allocation
# over Proportional allocation
RE_1=Est_Var_Ybar_st_prop/Est_Var_Ybar_st_opt
RE_1
RE_2=Est_Var_Ybar_st_prop/Est_Var_Ybar_st
RE_2

# Example_2

N_h=c(18260,4315,2233,1057,567)
Ybar_h=c(100,250,500,1760,2250)
s_h=c(80,200,600,1900,2500)
c_h=c(6,9,10,12,15)
# i)
N=sum(N_h)
w_h=N_h/N
Ybar_st=sum(w_h*Ybar_h)
s_2=1/(N-1)*(sum((N_h-1)*s_h^2)+sum(N_h*(Ybar_h-Ybar_st)^2))
n=600
Var_Ybar=(1/n-1/N)*s_2
# ii)
n_h_prop=round(n*w_h)
sum(n_h_prop)
n_h_opt=round(n*w_h*s_h/sum(w_h*s_h))
n_h_opt
sum(n_h_opt)
Var_Ybar_st_prop=(1/n-1/N)*sum(w_h*s_h^2)
Var_Ybar_st_opt=1/n*(sum(w_h*s_h))^2-1/N*sum(w_h*s_h^2)
cbind(Var_Ybar,Var_Ybar_st_prop,Var_Ybar_st_opt)
# iii)
n_h_opt=round(n*w_h*s_h/sqrt(c_h)/sum(w_h*s_h/sqrt(c_h)))
c=6000;c_0=1500
n=round((c-c_0)*sum(w_h*s_h/sqrt(c_h))/sum(w_h*s_h*sqrt(c_h)))
n
n_h_opt=round(n*w_h*s_h/sqrt(c_h)/sum(w_h*s_h/sqrt(c_h)))
