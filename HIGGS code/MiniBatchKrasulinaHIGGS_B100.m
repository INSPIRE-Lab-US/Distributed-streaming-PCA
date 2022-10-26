function [u] = MiniBatchOjaHIGGS_Final_B100
%% This scripts computes dominant eigenvector using Krasulina's method for
% mini-batch data settings
%% Data input
% tic
% HiggsData = csvread('HIGGS.csv');
% toc
% save -v7.3 HIGGS_mat HiggsData
ER = load('HIGGS_mat.mat');
ER = ER.HiggsData;
ER = ER(:, 2:end)'; % We are discarding the first dimension since it contains only labels
%% Input paramters
Batch = 100;
dataDimension = size(ER, 1);
TotalSamples = size(ER, 2);
TotalIterations = TotalSamples;
gamma_vary = 3e3:1e3:6e3;
ErrorMiniBatchOja = zeros(TotalIterations + 1, length(gamma_vary));
TotalConvergingRuns = zeros(length(gamma_vary), 1);
a = mean(ER, 2);
ER = ER - repmat(a, [1 size(ER, 2)]);
ER_1 = ER/max(max(ER));
%% Centralized Solution
[U, ~, ~] = svds(ER_1, 1);
u_centralized = U(:,1);
TotalSimulationRuns = 200;
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
            ErrorMiniBatchOja(:, i) = ErrorMiniBatchOja(:, i)+ErrorMini;
            TotalConvergingRuns(i) = TotalConvergingRuns(i) + 1;
        end
    end
    disp(simulationRun)
    toc
    %% Saving results
    tic
    save -v7.3 ErrorKrasulinaMiniBatch_Final_B_100 ErrorMiniBatchOja TotalConvergingRuns
    toc
end
end