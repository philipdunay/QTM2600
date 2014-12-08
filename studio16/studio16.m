function studio16 = studio16(A)
A;
if A' ~= A
        disp('Not symmetric')
    else
        disp('Symmetric')
end
[v,d] = eig(A);
isitdiag = rref(v);
    if isitdiag ~= eye(3)
        disp('Not diagonalizable')
    else
        disp('Diagonalizable')
    end
diagpdp = v*d*inv(v);
if diagpdp ~= A
        disp('A is not equal to PDP^-1')
    else
        disp('A is equal to PDP^-1')
        
    end
x = A(:,1);
y = A(:,2);
isitorthog = dot(x,y);
if isitorthog ~= 0
        disp('Not orthogonal')
    else
        disp('Orthogonal')
    end


end