%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1_r1_Shifted.mat')
figure
loglog(ErrorMiniBatchOja(:, 1)/TotalConvergingRuns(1), '-^', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8);
hold on, loglog(ErrorMiniBatchOja(1:end, 2)/TotalConvergingRuns(2), '--', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 3)/TotalConvergingRuns(3), '-o', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 4)/TotalConvergingRuns(4), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 5)/TotalConvergingRuns(5), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
hold on, loglog(ErrorMiniBatchOja(1:end, 6)/TotalConvergingRuns(6), '-*', 'LineWidth', 2, 'MarkerIndices', ceil(10.^(0:0.5:4)), 'MarkerSize', 8)
%loglog(1:length(ErrorMiniBatchOja(:, 1)), 1./(1:length(ErrorMiniBatchOja(:, 1))), '--', 'LineWidth', 1)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$\gamma=0.05$', '$\gamma=0.06$', '$\gamma=0.07$', '$\gamma=0.08$',...
    '$\gamma=0.09$', '$\gamma=0.1$', 'location','SouthWest');
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc Synthetic_PCA_NoLatency_B1000_UpperBound_10.eps