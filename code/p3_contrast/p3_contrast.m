%%
clc; clear all;
data_dir = pwd;

fname     = 'contrast.mat';
fullname  = [data_dir,'\' fname];
load(fullname);

% Average of 12 track data.
lnD_sr_aver=mean(lnD_sr_all,2,'omitnan');
lnp0_aver=mean(lnp0,2,'omitnan');

% plot
x=1:119;
lnp0_aver=mean(lnp0,2,'omitnan');
upline=lnD_sr_aver;
downline=lnD_sr_aver;
upline(lnD_sr_aver<lnp0_aver)=lnp0_aver(lnD_sr_aver<lnp0_aver);
downline(lnD_sr_aver>lnp0_aver)=lnp0_aver(lnD_sr_aver>lnp0_aver);
patchx=[x fliplr(x)];
patchy=[upline',fliplr(downline')];
try
    close('patchF')
catch
    fprintf('no such figure\n');
end

fig = figure;
fig.Position = [100, 50, 650, 500];

% set
ft     = 18;
ftname = 'Arial';
lw = 1.6;
plot(x,lnD_sr_aver,'LineWidth',1.5)
hold on
plot(x,lnp0_aver,'LineWidth',1.5)
hold on
patch(patchx,patchy,[0.93333, 0.83529, 0.82353],'edgealpha', '0', 'facealpha', '.5')
hold on
plot(x,0.005321*x-7.029,'LineStyle','--','LineWidth',1,'Color','#0072BD');
plot(x,0.0001412*x-6.712,'LineStyle','--','LineWidth',1,'Color','#D95319');
xlabel('Day of year 2023')
legend({'$\mathrm{ln(-d\sqrt{a}/dt)}$','$\mathrm{lnD}$'},'Interpreter','latex','FontSize',14)
set(gca,'FontName',ftname,'FontSize',18);