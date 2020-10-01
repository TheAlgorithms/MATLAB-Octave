clc;
clear;
close all;

%% Problem Definition

problem.CostFunction = @(x) minone(x);
problem.nVar = 100;


%% GA Parameters

params.MaxIt = 150;
params.nPop = 100;

params.beta = 1;
params.pC = 1;
params.mu = 0.02;

%% Run GA

out = Run_GA(problem, params);


%% Results

figure;
plot(out.bestcost, 'LineWidth', 2);
xlabel('Iterations');
ylabel('Best Cost');
grid on;





