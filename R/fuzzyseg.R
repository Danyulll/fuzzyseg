#' @export
FCM <-
  function(image_path = "",
           save_to_path = "",
           numClust = 3L,
           m = 2,
           maxIter = 50L,
           clusterMethod = "Euclidean",
           centroid_init = "None",
           error = 0.001,
           hard = "True",
           popSize = 50L,
           maxGen = 50L,
           bboAlpha = 0.25,
           E = 1L,
           I = 1L,
           mutationRate = 0.25,
           mutationStrength = 1L,
           initError = 0.001,
           fAlpha = 0.05,
           fBeta = 1L,
           fGamma = 1.5) {

    # Check if read in image exists
    if (!file.exists(image_path))
      stop(paste("Cannot find file: ", image_path))

    # Check if image is a jpg
    if (!grepl("\\.jpg$", image_path))
      stop("Image is not a jpg")

    # Check if save to directory exists
    if (!dir.exists(save_to_path))
      stop(paste("Cannot find directory: ", save_to_path))

    # Check if integer arguments are integers
    stopifnot(is.integer(numClust))
    stopifnot(is.integer(maxIter))
    stopifnot(is.integer(popSize))
    stopifnot(is.integer(maxGen))

    # Check if float arguments are floats
    stopifnot(is.numeric(m))
    stopifnot(is.numeric(error))
    stopifnot(is.numeric(bboAlpha))
    stopifnot(is.numeric(E))
    stopifnot(is.numeric(I))
    stopifnot(is.numeric(mutationRate))
    stopifnot(is.numeric(mutationStrength))
    stopifnot(is.numeric(initError))
    stopifnot(is.numeric(fAlpha))
    stopifnot(is.numeric(fBeta))
    stopifnot(is.numeric(fGamma))

    # Check if clusterMethod is one of the options
    stopifnot(clusterMethod == "Euclidean" ||
                clusterMethod == "Mahalanobis")


    # Check if centroid_init is one of the options
    stopifnot(centroid_init %in% c("None", "BBO", "GA", "FA"))

    # Check if hard is true or false
    stopifnot(hard %in% c("True", "False"))

    FCM_helper(
      image_path,
      save_to_path,
      numClust,
      m,
      maxIter,
      clusterMethod,
      centroid_init,
      error,
      hard,
      popSize,
      maxGen,
      bboAlpha,
      E,
      I,
      mutationRate,
      mutationStrength,
      initError,
      fAlpha,
      fBeta,
      fGamma
    )
  }

FCM_helper <-
  function(image_path,
           save_to_path,
           numClust,
           m,
           maxIter,
           clusterMethod,
           centroid_init,
           error,
           hard,
           popSize,
           maxGen,
           bboAlpha,
           E,
           I,
           mutationRate,
           mutationStrength,
           initError,
           fAlpha,
           fBeta,
           fGamma) {
    output = system2(
      "../FCM_Package.exe",
      c(
        image_path,
        save_to_path,
        numClust,
        m,
        maxIter,
        clusterMethod,
        centroid_init,
        error,
        hard,
        popSize,
        maxGen,
        bboAlpha,
        E,
        I,
        mutationRate,
        mutationStrength,
        initError,
        fAlpha,
        fBeta,
        fGamma
      )
    )
    print(output)
  }
