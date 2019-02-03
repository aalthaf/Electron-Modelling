a= [1; 2; 4; 6] ;
[n,m] = size(a) ;
idx = randperm(n) ;
b = a ;
b(idx,1) = a(:,1)  % first row arranged randomly
