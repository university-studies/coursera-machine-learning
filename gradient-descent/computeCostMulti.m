function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


hypothesis = zeros(size(X,1), 1);

for iter = 1:size(X, 2)
	
	hypothesis = hypothesis .+ (theta(iter) .* X(:, iter));
endfor

hypothesis_sub = hypothesis .- y;
sum_elements = hypothesis_sub .^2;
suma = sum(sum_elements);
 
 J = suma / (2 * m);


% =========================================================================

end
