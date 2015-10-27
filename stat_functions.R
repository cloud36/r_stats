#find degrees of freedom for two sample unparied t-test
df_unpaired <- function(s1, s2, n1, n2) {
  df <- ((s1^2/n1) + (s2^2/n2))^2 / (((s1^2/n1)^2/(n1-1)) + ((s2^2/n2)^2/(n2-1)))
  df
}

#standard error for two-sample unpaired t-test
se_unpaired <- function(s1, s2, n1, n2){
  se <- sqrt((s1^2/n1) +(s2^2/n2))
  se
}

#confidence interval for two-sample unpaired t-test
conf_int_unpairedd <- function(mu1, mu2, df, se, conf){
  me <- qt(conf, df) * se
  ci <- (mu2 - mu1) + c(-1,1) * me
  ci
}

#find degrees of freedom for two sample paried t-test
se_paired <- function(sd, n1){
  se <- sd/sqrt(n1)
  se
}

conf_int_paired(){
  
}