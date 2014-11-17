function betaHat = betaHat(A,y)
betaHat = inv(A'*A)*A'*y;
end