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

**TO DO: include images**

Depending on segmentation quality we may prefer utilizing the Mahlanobis distance:

**TO DO: include images**

### data

**TO DO: include and explain included dataset**
