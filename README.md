## fuzzyseg

**fuzzyseg** is an R package for segmenting images using Fuzzy C Means clustering with either a Euclidean or Mahalanobis distance. You may also specify a centroid initialization using the firefly algorithm, genetic algorithm, or the Biogeography-based optimization algorithm.

Segmented images are outputted in the specified save to directory. Additionally, either a hard or soft clustered image is returned. The program will shade pixels in the image either by a set amount (hard) or as a function of their membership (soft).

### Installing the package

Currently available using devtools:

```r
devtools::install_github("Danyulll/fuzzyseg")
```

### Getting started

Once installed you will have access to the FCM function. This is the main function of the package used to segments images. We recommend opening the help to examine what arguments are required.

```r
help(FCM)
```

Given any jpg image we can segment it using base FCM:

```
FCM("./path","./saveto", numClust=3L, m=2,clusterMethod="Euclidean")
```

### Data 

The R package contains the following two images that can be used as examples and for testing purposes.

The first image is of a bunch of apples "apples.jpg":

![Basket of apples](/data/src/apples.jpg "apples.jpg")

The second image is a mammogram "birad4.jpg":

![Mammogram](/data/src/birad4.jpg "birad4.jpg")


### Examples

#### FCM with Euclidean distance and no centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean")
```
![segmented apples](/data/results/apples_euc_base.jpeg "apples_euc_base.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean")
```
![segmented mammogram](/data/results/birad_euc_base.jpeg "birad_euc_base.jpeg"=250x250)


#### FCM with Euclidean distance and BBO centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean", centroid_init="BBO",  error=0.001, popSize=50L, maxGen=50L, bboAlpha=0.25, E=1, I=1, initError=0.001)
```
![segmented apples](/data/results/apples_euc_bbo.jpeg "apples_euc_bbo.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean", centroid_init="BBO",  error=0.001, popSize=50L, maxGen=50L, bboAlpha=0.25, E=1, I=1, initError=0.001)
```
![segmented mammogram](/data/results/birad_euc_bbo.jpeg "birad_euc_bbo.jpeg"=250x250)


#### FCM with Euclidean distance and GA centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean", centroid_init="GA",  error=0.001,  mutationRate=0.25, mutationStrength=1, initError=0.001)
```
![segmented apples](/data/results/apples_euc_ga.jpeg "apples_euc_ga.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Euclidean", centroid_init="GA",  error=0.001,  mutationRate=0.25, mutationStrength=1, initError=0.001)
```
![segmented mammogram](/data/results/birad_euc_ga.jpeg "birad_euc_ga.jpeg"=250x250)


#### FCM with Euclidean distance and Firefly centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2, clusterMethod="Euclidean", centroid_init="firefly",  error=0.001, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)
```
![segmented apples](/data/results/apples_euc_fa.jpeg "apples_euc_fa.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2, clusterMethod="Euclidean", centroid_init="firefly",  error=0.001, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)
```
![segmented mammogram](/data/results/birad_euc_fa.jpeg "birad_euc_fa.jpeg")



#### FCM with Mahalanobis distance and no centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis")
```
![segmented apples](/data/results/apples_mah_base.jpeg "apples_mah_base.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis")
```
![segmented mammogram](/data/results/birad_mah_base.jpeg "birad_mah_base.jpeg")


#### FCM with Mahalanobis distance and BBO centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis", centroid_init="BBO",  error=0.001, popSize=50L, maxGen=50L, bboAlpha=0.25, E=1, I=1, initError=0.001)
```
![segmented apples](/data/results/apples_mah_bbo.jpeg "apples_mah_bbo.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis", centroid_init="BBO",  error=0.001, popSize=50L, maxGen=50L, bboAlpha=0.25, E=1, I=1, initError=0.001)
```
![segmented mammogram](/data/results/birad_mah_bbo.jpeg "birad_mah_bbo.jpeg")


#### FCM with Mahalanobis distance and GA centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis", centroid_init="GA",  error=0.001,  mutationRate=0.25, mutationStrength=1, initError=0.001)
```
![segmented apples](/data/results/apples_mah_ga.jpeg "apples_mah_ga.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2,clusterMethod="Mahalanobis", centroid_init="GA",  error=0.001,  mutationRate=0.25, mutationStrength=1, initError=0.001)
```
![segmented mammogram](/data/results/birad_euc_ga.jpeg "birad_mah_ga.jpeg")


#### FCM with Mahalanobis distance and Firefly centroid initialization:
```
FCM(".//data//src//apples.jpg","C://", numClust=3L, m=2, clusterMethod="Mahalanobis", centroid_init="firefly",  error=0.001, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)
```
![segmented apples](/data/results/apples_mah_fa.jpeg "apples_mah_fa.jpeg")

```
FCM(".//data//src//birad4.jpg","C://", numClust=3L, m=2, clusterMethod="Mahalanobis", centroid_init="firefly",  error=0.001, initError=0.001, fAlpha=0.05, fBeta=1, fGamma=1.5)
```
![segmented mammogram](/data/results/birad_mah_fa.jpeg "birad_mah_fa.jpeg")