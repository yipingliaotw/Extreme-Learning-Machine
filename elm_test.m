function [Output]=elm_test(Input,InputWeight,OutputWeight)
H=Input*InputWeight';
H=sigmoid(H);
Output=H*OutputWeight;
Output = sigmoid(Output);
end

function [M] = sigmoid(M)
M=1 ./(1+exp(-M));
end