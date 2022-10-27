function [u] = MiniBatchOjaMNIST_Final_B10
%% This scripts computes dominant eigenvector using Krasulina's method for
% mini-batch data settings
%% Data input
Dataset = load('mnist_all.mat');
train0 = [double(Dataset.train0); double(Dataset.train1); double(Dataset.train2); double(Dataset.train3); double(Dataset.train4); double(Dataset.train5); double(Dataset.train6); double(Dataset.train7); double(Dataset.train8); double(Dataset.train9)];
%% Input paramters
Batch = 10;
dataDimension = size(train0, 2);
TotalSamples = size(train0, 1);
TotalIterations = TotalSamples;
gamma_vary = 0.5:0.1:0.9;
ErrorMiniBatchOja = zeros(TotalIterations + 1, length(gamma_vary));
TotalConvergingRuns = zeros(length(gamma_vary), 1);
ER = train0';
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
        ErrorMini = zeros(TotalIterations, 1);
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
    save -v7.3 ErrorKrasulinaMiniBatch_Final_B_10 ErrorMiniBatchOja TotalConvergingRuns
    toc
end
end