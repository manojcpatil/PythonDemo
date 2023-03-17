rm(list=ls())
N_h=c(50000, 35000,25000)
n_h=c(2000,1500,1500)
A_h=c(1050,790,450)
p_hat_h=A_h/n_h
w_h=N_h/sum(N_h)
p_hat_st=sum(w_h*p_hat_h)
cat("Estimate of population proportion of people who favour to Mr. X is \n",
    round(p_hat_st,4))
Est_var_P_hat_st=sum(w_h^2*(N_h-n_h)/(N_h*(n_h-1))*p_hat_h*(1-p_hat_h))
est_SE_P_hat_st=sqrt(Est_var_P_hat_st)
round(cbind(p_hat_st,est_SE_P_hat_st),4)
