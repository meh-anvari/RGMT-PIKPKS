%  chain.m simulates a Markov chain on {1, 2, ..., n} given an initial 
%  distribution and a transition matrix. 

% Program to simulate a Markov chain
% You might want to set up another .m file that defines mu and P
% The program assumes that the states are labeled 1, 2, ...

% Below is a sample, which you can use by uncommenting these lines
 mu=[0.2 0.5 0.3];     % initial distribution
 P=[[.3 .2 .5]; [.1 .8 .1]; [.4 .4 .2]];  % transition matrix

n=100;           % number of time steps to take
x=zeros(1,n+1); % clear out any old values
t=0:n;          % time indices

x(1)=rando(mu); % generate first x value (time 0, not time 1)

for i=1:n
  x(i+1) = rando(P(x(i),:));
end

