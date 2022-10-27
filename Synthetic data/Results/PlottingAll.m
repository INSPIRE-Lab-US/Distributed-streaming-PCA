% load('Results/ErrorKarMiniBatchVaryBatch_B1_0_7_2.mat')
% figure, loglog(ErrorMiniBatchOja(:, 3)/TotalConvergingRuns(3), 'LineWidth', 3)
% load('Results/ErrorKarMiniBatchVaryBatch_B10_0_7_2.mat')
% hold on, loglog(ErrorMiniBatchOja(1:10:end, 3)/TotalConvergingRuns(3), 'LineWidth', 3)
% load('Results/ErrorKarMiniBatchVaryBatch_B100_0_7_2.mat')
% hold on, loglog(ErrorMiniBatchOja(1:100:end, 1)/TotalConvergingRuns(3), 'LineWidth', 3)
% loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 3)

%% Try 2
% load('Results/ErrorKarMiniBatchVaryBatch_B10_init2_clsAll.mat')
% loglog(ErrorMiniBatchOja(:, 1), 'LineWidth', 3)
% hold on, loglog(ErrorMiniBatchOja(1:10:end, 2), 'LineWidth', 3)
% hold on, loglog(ErrorMiniBatchOja(1:50:end, 3), 'LineWidth', 3)
% hold on, loglog(ErrorMiniBatchOja(1:100:end, 4), 'LineWidth', 3)
% loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 3)
% xlabel('Method iteration ($t$)', 'interpreter', 'Latex')
% ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
% h = legend('$B=1$', '$B=10$', '$B=50$', '$B=100$', '$1/t$');
% set(h, 'interpreter', 'Latex')
% set(gca, 'FontName', 'Arial', 'FontSize', 20)
% print -depsc MNIST_PCA_NoLatency.eps

%% Try 3
%load('Results/ErrorKarMiniBatchVaryBatch_B10_init2_clsAll.mat')
% load('Results/ErrorKrasulinaMiniBatch_Final.mat')
% loglog(ErrorMiniBatchOja(:, 1), '.', 'LineWidth', 1)
% hold on, loglog(ErrorMiniBatchOja(1:end, 2), '--', 'LineWidth', 1)
% hold on, loglog(ErrorMiniBatchOja(1:end, 3), '+', 'LineWidth', 1)
% hold on, loglog(ErrorMiniBatchOja(1:end, 4), '-', 'LineWidth', 1)
% %loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
% xlabel('No. of samples processed', 'interpreter', 'Latex')
% ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
% h = legend('$B=1$', '$B=10$', '$B=50$', '$B=100$', 'location','SouthWest');
% set(h, 'interpreter', 'Latex')
% set(gca, 'FontName', 'Arial', 'FontSize', 20)
% print -depsc MNIST_PCA_NoLatency.eps

%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1.mat')
h1 = loglog(ErrorMiniBatchOja(:, 4)/TotalConvergingRuns(4), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_10.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_100.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_500.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '-s', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_2000.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-.', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$N=1$', '$N=10$', '$N=100$', '$N=500$', '$N=1000$', '$N=2000$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_Nodes.eps