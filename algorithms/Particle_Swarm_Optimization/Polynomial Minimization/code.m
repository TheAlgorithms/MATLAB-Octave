clc;
clear;
close all;

%% Problem Definition


CostFunction=@(x) Parabola(x);   % Cost Function

nVar = 5;           % 5 dimensional-Number of unknown (Decision Variables)

VarSize = [1 nVar]; % Matrix size of Decision Variables

VarMin = -10;       % Lower bound of Decision Variables
VarMax =  10;       % Upper bound of Decision Variables


%% Parameters of PSO

MaxIt = 1000; % Maximum Numbers of Iterations

nPop = 50;   % Population size (Swarm Size)

w = 1;        % Inertia Coefficient
wdamp=0.99;     % Damping Ratio of intertia weight
c1 = 2;       % Personal Acceleration Coefficient
c2  = 2;      % Social Acceleration Coefficient



%% Initialization

% The Particle Template
empty_particle.Position = [];      % position of particle
empty_particle.Velocity = [];      % velocity of particle
empty_particle.Cost = [];          % own measurement of particle(cost value)
empty_particle.Best.Position = []; % personal best with its position
empty_particle.Best.Cost = [];     % personal best with its cost value


particle = repmat(empty_particle, nPop,1); % Create random Population Array

%Initialization Global best
GlobalBest.Cost=inf; % for minization fun. its infinity before 1st iteration

% Initialize Population Members

    for i=1:nPop
    
    % Generate Random Solutions
    particle(i).Position=unifrnd(VarMin,VarMax,VarSize);
    
    % Initialize Velocity
    particle(i).Velocity=zeros(VarSize); %matrix with all o of varsize
    
     % Evaluation at above particle i position
    particle(i).Cost=CostFunction(particle(i).Position);
    
    % Update Personal Best value
    particle(i).Best.Position=particle(i).Position;
    particle(i).Best.Cost=particle(i).Cost;
    
    % Update Global Best
    if particle(i).Best.Cost<GlobalBest.Cost
        
        GlobalBest=particle(i).Best;
        
    end
    end
    % Array to hold best cost value on each iteration
    BestCost=zeros(MaxIt,1);
    
    %% Main Loop of PSO
    for it=1:MaxIt % first iter to last iteration
    
      for i=1:nPop % for every particle thisloop is required
        
        % Update Velocity    %element wise multiplication is there
        particle(i).Velocity = w*particle(i).Velocity ...
            +c1*rand(VarSize).*(particle(i).Best.Position-particle(i).Position) ...
            +c2*rand(VarSize).*(GlobalBest.Position-particle(i).Position);
        
         %Update Position
        particle(i).Position = particle(i).Position + particle(i).Velocity;
        
         % Evaluation
        particle(i).Cost = CostFunction(particle(i).Position);
        
        % Update Personal Best
        if particle(i).Cost<particle(i).Best.Cost
            
            particle(i).Best.Position=particle(i).Position; %best updated with current
            particle(i).Best.Cost=particle(i).Cost;
            
            % Update Global Best
            if particle(i).Best.Cost<GlobalBest.Cost
                
                GlobalBest=particle(i).Best;
                
            end
            
            
        end
        
      end
       % store the Best cost value
    BestCost(it)=GlobalBest.Cost;
     
    % Display iteration info.
    disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCost(it))]);
    
     %Damping Intertia coefficient
    w=w*wdamp; 
    end
    
    %% Results
    
    % Graph converges to origin
figure;
%plot(BestCost,'LineWidth',2); % for normal graph
semilogy(BestCost,'LineWidth',2); %for exponential graph
xlabel('Iteration');
ylabel('Best Cost');
grid on;

        
        
        
        
        