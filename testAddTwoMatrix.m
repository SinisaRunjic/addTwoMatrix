function tests = testAddTwoMatrix %% obavezna funkcija
    localfunctions
    tests = functiontests(localfunctions);
end

function testNormalAdd(testCase)
    A = eye(2,2);
    B = ones(2,2);
    actSol = addTwoMatrix(A,B);
    expSol = A + B;
    verifyEqual(testCase, actSol, expSol)
end

function testDifferentSize(testCase)
    A = eye(2,2);
    B = ones(1,3);
    try
        y = addTwoMatrix(A,B);
        actSol = 0;
    catch
        actSol = 1;
    end
    expSol = 1;
    verifyEqual(testCase, actSol, expSol)
end

function testStingMatrix(testCase)
    A = ['1',2;3,4];
    B = ones(2,2);
    try
        y = addTwoMatrix(A,B);
        actSol = 0;
    catch 
        actSol = 1;
    end
    expSol = 1;
    verifyEqual(testCase, actSol, expSol)
end

function testStingAndDifferentSizeMatrix(testCase)
    A = ['1',2;3,4];
    B = ones(1,2);
    try
        y = addTwoMatrix(A,B);
        actSol = 0;
    catch 
        actSol = 1;
    end
    expSol = 1;
    verifyEqual(testCase, actSol, expSol)
end

function testCellAndMatrix(testCase)
    A = {1,2;3,4};
    B = ones(2,2);
    try
        y = addTwoMatrix(A,B);
        actSol = 0;
    catch 
        actSol = 1;
    end
    expSol = 1;
    verifyEqual(testCase, actSol, expSol)
end