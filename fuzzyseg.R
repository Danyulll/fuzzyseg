FCM <- function(image_path="", save_to_path="", numClust=3, m=2, maxIter=50, clusterMethod="Euclidian", centroid_init="None",  error=0.001, hard="True", popSize=50, maxGen=50, bboAlpha=0.25, E=1, I=1, mutationRate=0.25, mutationStrength=1, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5){
  FCM_helper(image_path, save_to_path, numClust, m, maxIter, clusterMethod, centroid_init, error, hard, popSize, maxGen, bboAlpha, E, I, mutationRate, mutationStrength, initError, fAlpha, fBeta, fGamma)
}

FCM_helper <- function(image_path, save_to_path, numClust, m, maxIter, clusterMethod, centroid_init, error, hard, popSize, maxGen, bboAlpha, E, I, mutationRate, mutationStrength, initError, fAlpha, fBeta, fGamma){
  output = system2("./FCM_Package.exe", c(image_path, save_to_path, numClust, m, maxIter, clusterMethod, centroid_init, error, hard, popSize, maxGen, bboAlpha, E, I, mutationRate, mutationStrength, initError, fAlpha, fBeta, fGamma))
  print(output)
}

