#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double ManhattanC(NumericVector a, NumericVector b) {
    return sum(abs(a - b));
}