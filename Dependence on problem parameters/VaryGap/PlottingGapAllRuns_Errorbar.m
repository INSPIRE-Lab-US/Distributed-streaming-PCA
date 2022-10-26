%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_1_All.mat')
figure, errorbar((1:1e5:size(ErrorMiniBatchOja, 1)), mean(ErrorMiniBatchOja(1:1e5:end, :)'), std(ErrorMiniBatchOja(1:1e5:end, :)'), 'LineWidth', 2)
load('ErrorKrasulinaMiniBatch_Final_B_1000_gap_0_5.mat')
hold on, errorbar((1:1e5:size(ErrorMiniBatchOja, 1)), mean(ErrorMiniBatchOja(1:1e5:end, :)'), std(ErrorMiniBatchOja(1:1e5:end, :)'), 'LineWidth', 2)
set(gca,'YScale','log');
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$\lambda_1-\lambda_2=0.1$', '$\lambda_1-\lambda_2=0.5$')
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_B1000_gap_AllRuns_Errorbar.eps