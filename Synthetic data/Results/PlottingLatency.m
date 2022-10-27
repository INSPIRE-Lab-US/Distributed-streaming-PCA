%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_100_Latency.mat')
h1 = loglog(ErrorMiniBatchOja(:, 1)/TotalConvergingRuns(1), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 4)/TotalConvergingRuns(4), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:6)), 'MarkerSize', 8)
%ylim([1 1e-6])
xlabel('$\#$ of samples (T) received', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}^{*^T} \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$\mu=0$', '$\mu=10$', '$\mu=100$', '$\mu=200$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc KraSyntheticLatency_0_7_2.eps