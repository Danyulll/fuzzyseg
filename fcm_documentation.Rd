\name{FCM {fuzzyseg}}
\alias{FCM}
\title{
FCM: Fuzzy C-Means Clustering
}
\description{
'FCM' is used the segment a user specified image using the Fuzzy C-Means clustering algorithm.
}
\usage{
FCM(image_path, save_to_path, numClust=3, m=2, maxIter=20, clusterMethod="Euclidean", centroid_init="None",  error=0.001, hard="True", popSize=50, maxGen=50, bboAlpha=0.25, E=1, I=1, mutationRate=0.25, mutationStrength=1, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)
}

\arguments{
  \item{image_path}{
file pathway indicating where the image to be segmented has been stored.
}
  \item{save_to_path}{
file pathway indicating where the output images should be saved.
}
  \item{numClust}{
number of clusters produced by the fcm algorithm. This argument must be an integer indicated by 'L' following the integer number.
}
  \item{m}{
degree of fuzziness to be used by fcm algorithm.
}
\item{maxIter}{
integer indicating the maximum number of iterations the fcm algorithm runs for. This may cause the algorithm to not converge. This argument must be an integer indicated by 'L' following the integer number.
}
\item{clusterMethod}{
a description of the distance measurement to be used. Can be "Euclidean" or "Mahalanobis". 
}
\item{centroid_init}{
a description of the centroid initialization to be used by fcm. Defualt "none" results in centroids being randomly initialized. Other options supported are "GA", "firefly", and "BBO". "GA" uses the genetic algorithm to initialize the centroids. "firefly" uses the firefly algorithm to initialize the centroids and "BBO" uses the Biogeography-Based Optimization algorithm to initialize the centroids.
}
\item{error}{
minimum difference required between fcm iterations before the algorithm converges.
}
\item{hard}{
string; if 'True' hard clustering is used. If 'False' soft clustering is used. 
}
\item{popSize}{
size of the population for "GA", "firefly", or "BBO" algorithm initializations. This argument must be an integer indicated by 'L' following the integer number.
}
\item{maxGen}{
maximum number of iterations for "GA", "firefly", or "BBO" algortihm initializations. This argument must be an integer indicated by 'L' following the integer number.
}
\item{bboAlpha}{
alpha parameter of BBO algorithm
}
\item{E}{
maximum emmigration rate of BBO algorithm
}
\item{I}{
maximum immigration rate of BBO algorithm
}
\item{mutationRate}{
mutation rate of GA algorithm.
}
\item{mutationStrength}{
mutation strength of GA algorithm.
}
\item{initError}{
minimum difference required between GA, firefly, or BBO iterations before the algorithm converges.
}
\item{fAlpha}{
alpha parameter of firefly algorithm
}
\item{fBeta}{
beta parameter of firefly algorithm
}
\item{fGamma}{
gamma parameter of firefly algorithm
}

}

\value{
'FCM' does not return any values but rather saves files of the image clusters to the specified {save_to_path} file location.
}
\references{
TODO
}
\author{
TODO
}

\examples{
FCM("birad_test.jpg", "C:", clusterMethod = "Mahalanobis")

FCM("birad_test.jpg", "C:", numClust=4, m=2.1, maxIter=25, clusterMethod="Euclidean", centroid_init="BBO",  error=0.001, hard="True", popSize=50, maxGen=50, bboAlpha=0.25, E=1, I=1, initError=0.0001)

FCM("birad_test.jpg", "C:", numClust=3, m=2, maxIter=30, clusterMethod="Mahalanobis", centroid_init="GA",  error=0.001, hard="True", popSize=5, maxGen=55, mutationRate=0.25, mutationStrength=1, initError=0.001)

FCM("birad_test.jpg", "C:", numClust=3, m=2, maxIter=20, clusterMethod="Euclidean", centroid_init="firefly",  error=0.001, hard="False", popSize=25, maxGen=10, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
