param lambda;
param n;
param n_all;
param n_bat;
param n_bowl;
param n_wick;
param money;
param r{i in 1..n};

var m{i in 1..n};

minimize summation: sum{i in 1..n} ((r[i]/m[i]) + (lambda*m[i]*m[i]));
#maximize em1: m1;
#maximize em2: m2;
#maximize em3: m3;

subject to summation_constant: sum{i in 1..n} m[i] <= money;
subject to nonnegatives {i in 1..n}: m[i]>=1;