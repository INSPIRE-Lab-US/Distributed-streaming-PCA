function [u] = MiniBatchOjaSynthetic_Final_B1000_gap0_1All
%% This scripts computes dominant eigenvector using Krasulina's method for
% mini-batch data settings
%% Input paramters
Batch = 1e3;
dataDimension = 5;
TotalSamples = 1e6;
TotalSimulationRuns = 200;
TotalIterations = TotalSamples;
gamma_vary = 180;
ErrorMiniBatchOja = zeros(TotalIterations + 1, TotalSimulationRuns);
TotalConvergingRuns = zeros(length(gamma_vary), 1);
%% Generate data
%ER = -100 + 200*rand(dataDimension, TotalSamples);% Uniform dist
ER = randn(dataDimension, TotalSamples);
%A = diag([1, 0.2, 0.08, 0.06, 0.04]); Gap = 0.8
A = diag([1 0.9 0.8 0.7 0.6]); % Gap = 0.1
ER = A*ER;
a = mean(ER, 2);
ER = ER - repmat(a, [1 size(ER, 2)]);
ER_1 = ER/max(max(ER));
%% Centralized Solution
[U, ~, ~] = svds(ER_1, 1);
u_centralized = U(:,1);
for simulationRun=1:TotalSimulationRuns
    tic
    rng(simulationRun)
    ER = ER_1(:, randperm(size(ER, 2)));
    x(:, 1) = randn(dataDimension, 1);
    x(:, 1) = x(:, 1)/norm(x(:, 1));
    for i=1:length(gamma_vary)
        x_t = x(:, 1);
        ErrorMini = zeros(TotalIterations + 1, 1);
        ErrorMini(1, 1) = 1 - (x(:, 1)'*u_centralized)^2/norm(x(:, 1))^2;
        batch = Batch;
        for k=1:TotalIterations/batch
            CovarianceBatch = (1/batch)*ER(:, (k-1)*batch+1:k*batch)*ER(:, (k-1)*batch+1:k*batch)';
            x_t = x_t + ((gamma_vary(i))/k)*(CovarianceBatch*x_t - (x_t'*CovarianceBatch*x_t)*x_t/(x_t'*x_t));
            ErrorMini((k-1)*batch+2:k*batch+1) = 1 - (x_t'*u_centralized)^2/norm(x_t)^2;
        end
        if ~sum(isnan(ErrorMini))
            ErrorMiniBatchOja(:, simulationRun) = ErrorMini;
            TotalConvergingRuns(i) = TotalConvergingRuns(i) + 1;
        end
    end
    disp(simulationRun)
    toc
    %% Saving results
end
tic
save -v7.3 ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_1_All ErrorMiniBatchOja TotalConvergingRuns
toc
end