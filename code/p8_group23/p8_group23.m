%%
clc; clear all;
data_dir = pwd;

fname1     = 'f107_120.mat';
fname2     = 'Ap_120.mat';
fname3     = 'swm_lnD_group23.mat';

fullname1  = [data_dir,'\' fname1];
fullname2  = [data_dir,'\' fname2];
fullname3  = [data_dir,'\' fname3];

load(fullname1);load(fullname2);load(fullname3);

%%
% plot other 2 groups.
x=1:120;
fig = figure;
fig.Position = [100, 50, 550, 800];
ftname='Arial';
t = tiledlayout(10,2,'TileSpacing','none');
%——————————————————————————————————52180
nexttile(1)
ax=nexttile(1,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_5218(:,1)),'BarWidth',1,'FaceColor','#7E2F8E');
Label1 = ylabel('52180');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(a)','FontName',ftname,'FontSize',10)
grid on;
%———————————————————————————————————52181
nexttile(3)
ax=nexttile(3,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_5218(:,2)),'BarWidth',1,'FaceColor','#7E2F8E');
Label2 = ylabel('52181');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(b)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————52182
nexttile(5)
ax=nexttile(5,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_5218(:,3)),'BarWidth',1,'FaceColor','#7E2F8E');
Label3 = ylabel('52182');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(c)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————52183
nexttile(7)
ax=nexttile(7,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_5218(:,4)),'BarWidth',1,'FaceColor','#7E2F8E');
Label4 = ylabel('52183');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(d)','FontName',ftname,'FontSize',10)
grid on;
%———————————————————————————————————Jr
nexttile(9)
ax=nexttile(9,[1 2]) ;
bar(x,swm_lnp0_aver2,'BarWidth',1,'FaceColor','#7E2F8E');
Label5 = ylabel('J_r^T(Group2)');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
grid on;
text(1.5,1.5,'(e)','FontName',ftname,'FontSize',10)
%——————————————————————————————————46300
nexttile(11)
ax=nexttile(11,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_46300),'BarWidth',1,'FaceColor','#77AC30');
Label1 = ylabel('46300');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(f)','FontName',ftname,'FontSize',10)
grid on;
%———————————————————————————————————46301
nexttile(13)
ax=nexttile(13,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0_46301),'BarWidth',1,'FaceColor','#77AC30');
Label2 = ylabel('46301');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(g)','FontName',ftname,'FontSize',10)
grid on;
%———————————————————————————————————Jr
nexttile(15)
ax=nexttile(15,[1 2]) ;
bar(x,swm_lnp0_aver3,'BarWidth',1,'FaceColor','#77AC30');
Label5 = ylabel('J_r^T(Group3)');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(h)','FontName',ftname,'FontSize',10)
grid on;
%———————————————————————————————————Ap
nexttile(17)
ax=nexttile(17,[1 2]) ;
plot(x,Ap,'LineWidth',1);
Label14 = ylabel('Ap');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
xlim([1,120]);
xticks([1 32 60 91]);
ax.TickLength = [0.005 0.005];
text(1.5,89,'(i)','FontName',ftname,'FontSize',10)
grid on;
 %————————————————————————————————————f107
nexttile(19)
ax=nexttile(19,[1 2]) ;
plot(x,f107,'lineWidth',1,'Color','#D95319');
Label15 = ylabel('F10.7');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
xticks([1 32 60 91]);
xticklabels({'Jan.','Feb.','Mar.','Apr.'});
xlabel('2023');
 ax.TickLength = [0.005 0.005];
 grid on;
 xlim([1,120]);
 text(1.5,320,'(j)','FontName',ftname,'FontSize',10)