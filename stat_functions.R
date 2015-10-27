#find degrees of freedom for two sample unparied t-test
df <- function(s1, s2, n1, n2) {
  df <- ((s1^2/n1) + (s2^2/n2))^2 / (((s1^2/n1)^2/(n1-1)) + ((s2^2/n2)^2/(n2-1)))
  df
}