function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

pos = find(y==1);
neg = find(y==0);
J1= (y(pos,:)')*( log( sigmoid( (X(pos,:)) * theta ) ) );
J2= (1-y(neg,:)')*( log( 1-sigmoid( (X(neg,:)) * theta) ) );
RegJ= (lambda/(2*m))*(theta(2:size(theta))'*theta(2:size(theta))); 
J= (-1/m)*(J1+J2) + RegJ;

RegG(2:size(theta),:)=(lambda/m)*theta(2:size(theta),:);
RegG(1,:)=0;
grad= (1/m)*(X'*(sigmoid(X*theta)-y)) +RegG;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
