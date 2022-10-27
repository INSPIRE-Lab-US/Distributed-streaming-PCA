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
load('ErrorKrasulinaMiniBatch_Final_B_20000.mat')
figure;
h1 = loglog(ErrorMiniBatchOja(:, 1)/TotalConvergingRuns(1), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 4)/TotalConvergingRuns(4), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$c=6000$', '$c=7000$', '$c=8000$', '$c=9000$', '$c=10000$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc Higgs_PCA_NoLatency_B20000.eps