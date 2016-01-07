function [InputWeight,OutputWeight]=elm_train(train_input,train_target,NumHiddenNeurons)
dimension = size(train_input,2); %the dimension of the data
InputWeight = rand(NumHiddenNeurons,dimension); %generate weight between input layer and hidden layer randomly
H = train_input*InputWeight'; 
H = sigmoid(H); %activation function
OutputWeight = pinv(H)*train_target;  %pseudoinverse  inv(H .'*H)*H .'
end

function [M] = sigmoid(M)
M = 1 ./ (1+exp(-M));
end