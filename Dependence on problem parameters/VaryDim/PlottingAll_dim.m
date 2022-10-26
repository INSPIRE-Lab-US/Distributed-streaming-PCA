%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1000.mat')
h1 = loglog(ErrorMiniBatchOja(:, 2)/TotalConvergingRuns(2), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_d10.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_d15.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 1)/TotalConvergingRuns(1), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1000_d20.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 1)/TotalConvergingRuns(1), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$d=5$', '$d=10$', '$d=15$', '$d=20$',...
    'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_B1000_d_All.eps