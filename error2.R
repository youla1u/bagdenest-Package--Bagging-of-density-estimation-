#' @title Estimation error
#' @description This function provides the error made by an estimator
#' @param obs sample of observations
#' @param prev prevision
#'
#' @return Quadratic error ,Error log likelihood or  Hellinger dissimilarity error
#' @export
error2 = function(obs,prev)	{
  #1) Erreur quadratique
  er1 = mean(obs * (obs-prev)^2)
  #2) Erreur log vraissemblance
  er2 = sum(ifelse(prev>0,obs * log(prev),0))
  #3) Erreur de dissimilarit? d'Hellinger
  er3 =mean(obs * (sqrt(obs)-sqrt(prev))^2)
  signif(c(er1,er2,er3),3)
}

