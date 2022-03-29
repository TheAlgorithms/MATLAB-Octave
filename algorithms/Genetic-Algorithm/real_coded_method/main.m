clc;
clear;
close all;

%% Problem Definition

problem.CostFunction = @(x) sphere(x);
problem.nVar = 5;
problem.upperbound = 10;
problem.lowerbound = -10;


%% GA Parameters

params.MaxIt = 1000;
params.nPop = 1000;

params.beta = 1;
params.pC = 1;
params.mu = 0.02;
params.sigma = 0.1;
params.gamma = 0.1;
%% Run GA

out = Run_GA(problem, params);


%% Results

figure;
semilogy(out.bestcost, 'LineWidth', 2);
xlabel('Iterations');
ylabel('Best Cost');
grid on;





