%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_1.mat')
h1 = loglog(ErrorMiniBatchOja(:, 4)/TotalConvergingRuns(4), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_3.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_4.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 1)/TotalConvergingRuns(1), '-s', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_5.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$\lambda_1-\lambda_2=0.1$', '$\lambda_1-\lambda_2=0.2$',...
    '$\lambda_1-\lambda_2=0.3$', '$\lambda_1-\lambda_2=0.4$',...
    '$\lambda_1-\lambda_2=0.5$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_B1000_gaps_All.eps