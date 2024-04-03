%%  plot the daily average semi-major axis of the 12 satellites' orbits.
clc;clear all;

data_dir = pwd;

fname     = '12robit_SMA.mat';
fullname  = [data_dir,'\' fname];
load(fullname)

fig = figure;
fig.Position = [100, 50, 650, 500];

% set
ft     = 18;
ftname = 'Arial';
lw = 1.6;

plot(SMA_all,'LineWidth',lw);

Label1 = ylabel('Semi-major axis [km]');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on');
ax.TickLength = [0.005 0.005];

xlim([0,120]);
xlabel('Day of year 2023');
legend({'48883','48884','48886','48888','48890', ...
    '48893','48894','48895','48896','48897','48899','48904'},'NumColumns',3,'FontSize',10)

grid on;
set(gca,'fontsize', ft, 'fontname', ftname);