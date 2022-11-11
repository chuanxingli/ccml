spectralClusteringAffinity<-function(dist_matrix,k,type = 3){
  #' Perform spectral clustering algorithms for an distance matrix, using SNFtool::spectralClustering.
  #' @param affi_matrix A numerical similarity or distance matrix.
  #' @param k A number value of clusters
  #' @param type The variants of spectral clustering to use. See \code{SNFtool::spectralClustering}
  #' @export
  #' @import SNFtool
  #' @return A vector consisting of cluster labels of each sample.
  #'
  # Use the algorithm form the SNFtool package.

  requireNamespace("SNFtool")
  res <- SNFtool::spectralClustering(as.matrix(1-dist_matrix),k)
  return(res)
}
