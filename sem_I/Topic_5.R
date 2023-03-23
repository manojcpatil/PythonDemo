# Practical_5
# Que_1
rm(list=ls())
N=250;
N_1=50;N_2=30;N_3=100;N_4=70
n=25;
n_1=5;n_2=3;n_3=12;n_4=5;
s_1=sample(1:50,n_1)
s_2=sample(51:80,n_2)
s_3=sample(81:180,n_3)
s_4=sample(181:250,n_4)
sample_str=c(s_1,s_2,s_3,s_4) # stratified  random samples
# Que_2
N_h=c(1000,1500,2500)
s_1=c(5,4,1,2,4,3,7,5,0,3)
s_2=c(11,9,13,9,4,5,5,14,8,9,11,7,10,14,7)
s_3=c(22,16,18,18,23,20,20,19,20,16,21,20,26,20,26,18,21,17,22,21)
n_h=c(length(s_1),length(s_2),length(s_3))
# To get Ybar_h using tapply function
s=c(s_1,s_2,s_3)
s_cat=c(rep("str_1",length(s_1)),rep("str_2",length(s_2)),
        rep("str_3",length(s_3)))
Ybar_h=tapply(s,s_cat,mean)
Sh_2=tapply(s,s_cat,var)
# To get Ybar_h using lapply function
s_=list(s_1,s_2,s_3)
Y_bar_h_=unlist(lapply(s_, mean))
# 
Y_bar_h=c(mean(s_1),mean(s_2),mean(s_3))

w_h=N_h/sum(N_h) # weight of h^th str
# Est of population mean under str sampling
Ybar.st=sum(w_h*Y_bar_h_);Ybar.st
cat("Estimate of population mean under startified sampling is \n",Ybar.st)

Sh_2=unlist(lapply(s_, var))
Est_Var_Ybar_st=sum((1/n_h-1/N_h)*w_h^2*Sh_2)
Est_SE_Ybar_st=sqrt(Est_Var_Ybar_st);Est_SE_Ybar_st

# Que_3
Str_1=c(799,773,778,734,588,577,507,457,438,415,401,387,381,324,315)
Str_2=c(314,298,296,258,256,243,238,237,235,235,216,208,201,192,180,
        179,172,172,163,162,161,159,153,144,138,138,138,138,136,132,
        130,126,121,120,119,118,118,116,116,113,113,110,110,108,106,
        104,101,100)
Population=c(Str_1,Str_2)
n=20;N=64;
sam.srs=sample(Population,20)
Ybar=mean(sam.srs)
yt_hat_SRS=N*Ybar  # Estimate of pop total under SRS
SE_yt_hat_SRS=N*sqrt((1/n-1/N)*var(Population))
Est_SE_yt_hat_SRS=N*sqrt((1/n-1/N)*var(sam.srs)) 
s_1=sample(Str_1,5)
s_2=sample(Str_2,15)
Y_barh=c(mean(s_1),mean(s_2))
sy_2=c(var(Str_1),var(Str_2))
Sy_2=c(var(s_1),var(s_1))

Nh=c(16,48)
nh=c(5,15)
wh=Nh/sum(Nh)
Ybar_st=sum(wh*Y_barh)
yt_hat_Str=N*Ybar_st # Est of pop total under startified RS
cbind(yt_hat_SRS,yt_hat_Str)

Var_Ybar_st=sum((1/nh-1/Nh)*wh^2*sy_2)
Est_Var_Ybar_st=sum((1/nh-1/Nh)*wh^2*Sy_2)

SE_yt_hat_Str=N*sqrt(Var_Ybar_st)
Est_SE_yt_hat_Str=N*sqrt(Est_Var_Ybar_st)

cbind(SE_yt_hat_SRS,SE_yt_hat_Str)
cbind(Est_SE_yt_hat_SRS,Est_SE_yt_hat_Str)
