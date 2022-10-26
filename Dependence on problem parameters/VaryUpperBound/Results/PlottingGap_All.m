%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1_r1.mat')
figure
h = loglog(ErrorMiniBatchOja(:, 4)/TotalConvergingRuns(4), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1_r2.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1_r3.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 1)/TotalConvergingRuns(1), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
load('ErrorKrasulinaMiniBatch_Final_B_1_r10.mat')
hold on, loglog(ErrorMiniBatchOja(1:end, 6)/TotalConvergingRuns(6), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
% hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
% hold on, loglog(ErrorMiniBatchOja(1:end, 6)/TotalConvergingRuns(6), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$r=1$', '$r=2$', '$r=3$', '$r=10$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc Synthetic_PCA_NoLatency_B1000_UpperBound_All.eps