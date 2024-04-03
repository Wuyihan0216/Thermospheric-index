%%
clc; clear all;
data_dir = pwd;

fname1     = 'f107_120.mat';
fname2     = 'Ap_120.mat';
fname3     = 'swm_lnD.mat';

fullname1  = [data_dir,'\' fname1];
fullname2  = [data_dir,'\' fname2];
fullname3  = [data_dir,'\' fname3];

load(fullname1);load(fullname2);load(fullname3);

%%
% plot 12 Js
x=1:120;
ftname = 'Arial';
fig = figure;
fig.Position = [100, 50, 550, 1000];
t = tiledlayout(15,2,'TileSpacing','none');
%——————————————————————————————————48883
nexttile(1)
ax=nexttile(1,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,1)),'BarWidth',1);
Label1 = ylabel('48883');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(a)','FontName',ftname,'FontSize',10)
grid on;

%———————————————————————————————————48884
nexttile(3)
ax=nexttile(3,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,2)),'BarWidth',1);
Label2 = ylabel('48884');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(b)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————48886
nexttile(5)
ax=nexttile(5,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,3)),'BarWidth',1);
Label3 = ylabel('48886');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(c)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————48888
nexttile(7)
ax=nexttile(7,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,4)),'BarWidth',1);
Label4 = ylabel('48888');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(d)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————48890
nexttile(9)
ax=nexttile(9,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,5)),'BarWidth',1);
Label5 = ylabel('48890');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(e)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————48893
nexttile(11)
ax=nexttile(11,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,6)),'BarWidth',1);
Label6 = ylabel('48893');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
 ylim([-2 2]);
text(1.5,1.5,'(f)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48894
nexttile(13)
ax=nexttile(13,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,7)),'BarWidth',1);
Label7 = ylabel('48894');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
 ylim([-2 2]);
text(1.5,1.5,'(g)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48895
nexttile(15)
ax=nexttile(15,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,8)),'BarWidth',1);
Label8 = ylabel('48895');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
ylim([-2 2]);
 text(1.5,1.5,'(h)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48896
nexttile(17)
ax=nexttile(17,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,9)),'BarWidth',1);
Label9 = ylabel('48896');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
 ylim([-2 2]);
 text(1.5,1.5,'(i)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48897
nexttile(19)
ax=nexttile(19,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,10)),'BarWidth',1);
Label10 = ylabel('48897');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
 ylim([-2 2]);
text(1.5,1.5,'(j)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48899
nexttile(21)
ax=nexttile(21,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,11)),'BarWidth',1);
Label11 = ylabel('48899');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
 ax.TickLength = [0.005 0.005];
 xticks([1 32 60 91]);
 xlim([1,120]);
 ylim([-2 2]);
 text(1.5,1.5,'(k)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————48904
nexttile(23)
ax=nexttile(23,[1 2]) ;
bar(x,cat(1,nan,swm_lnp0(:,12)),'BarWidth',1);
Label12 = ylabel('48904');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
ax.TickLength = [0.005 0.005];
xticks([1 32 60 91]);
xlim([1,120]);
ylim([-2 2]);
text(1.5,1.5,'(l)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————Jr
nexttile(25)
ax=nexttile(25,[1 2]) ;
bar(x,swm_lnp0_aver,'BarWidth',1);
Label13 = ylabel('J_r^T(Group1)');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
xticks([1 32 60 91]);
 ax.TickLength = [0.005 0.005];
 xlim([1,120]);
 ylim([-2 2]);
 text(1.5,1.5,'(m)','FontName',ftname,'FontSize',10)
 grid on;
%————————————————————————————————————Ap
nexttile(27)
ax=nexttile(27,[1 2]) ;
plot(x,Ap,'LineWidth',1);
Label14 = ylabel('Ap');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
xlim([1,120]);
xticks([1 32 60 91]);
ax.TickLength = [0.005 0.005];
text(1.5,89,'(n)','FontName',ftname,'FontSize',10)
grid on;
%————————————————————————————————————f107
nexttile(29)
ax=nexttile(29,[1 2]) ;
plot(x,f107,'lineWidth',1,'Color','#D95319');
Label15 = ylabel('F10.7');
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on','XTickLabel',[])
xticks([1 32 60 91]);
xticklabels({'Jan.','Feb.','Mar.','Apr.'});
xlabel('2023');
 ax.TickLength = [0.005 0.005];
 grid on;
 text(1.5,320,'(o)','FontName',ftname,'FontSize',10)
 xlim([1,120]);