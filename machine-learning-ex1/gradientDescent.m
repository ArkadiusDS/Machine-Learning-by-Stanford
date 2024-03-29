function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
 i = 1:m;

for iter = 1:num_iters

   
    temp0 = theta(1) - (alpha/m) * sum((theta(1) + theta(2) .* X(i,2)) - y(i));
    temp1 = theta(2) - (alpha/m) * sum(((theta(1) + theta(2) .* X(i,2)) - y(i)) .* X(i,2));
    
    theta(1) = temp0;
    theta(2) = temp1;

  
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
