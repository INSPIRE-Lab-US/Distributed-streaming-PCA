%% Try 4
load('ErrorKrasulinaMiniBatch_Final_B_1000_d20_AllRuns.mat')
loglog(ErrorMiniBatchOja)
xlabel('No. of samples processed', 'interpreter', 'Latex')
ylabel('$1 - \frac{\mathbf{q}_1^T \mathbf{v}_t}{\|\mathbf{v}_t\|_2^2}$', 'interpreter', 'Latex')
set(gca, 'FontName', 'Arial', 'FontSize', 20)
print -depsc MNIST_PCA_NoLatency_B1000_d20_AllRuns.eps