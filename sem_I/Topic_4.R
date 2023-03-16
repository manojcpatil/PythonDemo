rm(list=ls())
# Q_1
N=2000;d=20;alpha=0.05;Sy_2=15000
a=qnorm(alpha/2,lower.tail = F)*sqrt(Sy_2)/d
n_0=a^2/(1+a^2/N)
n_0

# Q_2
alpha=0.05;N=5000
z_=qnorm(alpha/2,lower.tail = F)
n_0=(z_*6)^2/(1+1/N*(z_*6)^2)
n_0
# Q_3
n=200;p=0.67
set.seed(n)
s.sample=rbinom(n,1,p)
Est_pop_prop=mean(s.sample)
cat("Estimate of Population proportion is", Est_pop_prop, "\n")


s.sample=matrix(rbinom(n*1000,1,p),n,1000)
Est_Popu_prop=apply(s.sample,2,mean)
length(Est_Popu_prop)
hist(Est_Popu_prop)
# Q_4
p_hat=0.55
