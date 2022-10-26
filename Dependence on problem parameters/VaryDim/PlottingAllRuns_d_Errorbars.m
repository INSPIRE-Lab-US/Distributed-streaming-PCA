%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1000_d10_All.mat')
figure, errorbar(mean(ErrorMiniBatchOja(1:1e5:end, :)'), std(ErrorMiniBatchOja(1:1e5:end, :)'), 'LineWidth', 2)
load('ErrorKrasulinaMiniBatch_Final_B_1000_d20_AllRuns.mat')
hold on, errorbar(mean(ErrorMiniBatchOja(1:1e5:end, :)'), std(ErrorMiniBatchOja(1:1e5:end, :)'), 'LineWidth', 2)
%set(gca,'YScale','log');
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
h = legend('$d=10$', '$d=20$')
set(h, 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_B1000_d_Errorbars_LinearScale.eps