load('ErrorKrasulinaMiniBatch_Final_B_1000_Latency.mat')
figure
h1 = loglog(ErrorMiniBatchOja(:, 1)/TotalConvergingRuns(1), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%load('ErrorKrasulinaMiniBatch_Final_B_3200.mat')
%hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%load('ErrorKrasulinaMiniBatch_Final_B_5000.mat')
%hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '-', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 4)/TotalConvergingRuns(4), '-s', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), ':', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
xlim([0 11e6])
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
%h = legend('$B=1$', '$B=100$', '$B=1000$', '$B=3200$', '$B=5000$', '$B=10000$', '$B=20000$', 'location','SouthWest');
h = legend('$\mu=0$', '$\mu=10$', '$\mu=100$', '$\mu=1000$', '$\mu=2000$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc Higgs_PCA_Latency.eps