function C = addTwoMatrix(A,B)
    assert(ismatrix(A) && ismatrix(B), 'One of input variables arent matrix')
    assert(isnumeric(A) && isnumeric(B) , 'One of matrix isnt numeric')
    [rowA,colA] = size(A);
    [rowB,colB] = size(B); 
    assert(~(rowA ~= rowB || colA ~= colB), 'Matix A and B arent same size.')
    C=A+B;
end