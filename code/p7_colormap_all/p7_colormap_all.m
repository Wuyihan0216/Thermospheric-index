%%
clc; clear all;
data_dir = pwd;

fname     = 'swm_lnD_all.mat';

fullname  = [data_dir,'\' fname];

load(fullname);

%%
fig = figure;
fig.Position = [20, 20, 700, 600];
ftname='Arial';
t = tiledlayout(2,1);

%————————————————————————————————————————(a)
nexttile(1)
ax2=nexttile(1) ;
x0=1:120;
y0=1:18;
image(x0,y0,swm_lnp0_all,'CDataMapping','scaled') ;    
set(gca,'YDir','normal','tickdir','none'); 

xtick = linspace(0.5,120.5,121);
ytick = linspace(0.5,18.5,19);
[x1,y1] = meshgrid(xtick,xtick);
hold on;
plot(y1,x1,'k',x1,y1,'k');             
hold off;
colormap parula;
colortable2 = textread('E:\za\colorbar\CBR_coldhot.txt');
colorbar('Ticks',[-2.0,-1.5,-1.0,-0.5,0.0,0.5,1.0,1.5,2.0]);
caxis([-2,2])
ylabel('J_s^T','FontSize',16);
xlim([0.5 120.5])
yticks([1 12 16 18])
yticklabels(' ')
text(-10,7,'Group1','FontName',ftname,'FontSize',10)
text(-10,13.5,'Group1','FontName',ftname,'FontSize',10)
text(-10,17,'Group1','FontName',ftname,'FontSize',10)
text(3.5,17,'(a)','FontSize',12)
set(gca,'FontSize',12,'XTickLabel','');

%——————————————————————————————————(b)
nexttile(2)
ax1=nexttile(2) ;
x=1:120;
plot(x,swm_lnp0_aver,'-','LineWidth',1.5,'MarkerSize',10)
y=x*0;
hold on
plot(x,swm_lnp0_aver2,'LineWidth',1.5);
plot(x,swm_lnp0_aver3,'LineWidth',1.5);
p=line(x,y,'Color',[0.0,0.0,0.0],'LineStyle','--','LineWidth',1);
hold off
grid on;
xlim([1 120]);
xticks([1 20 40 60 80 100 120])
xlabel('Day of year 2023','FontSize',18);
ylabel('J_p^T','FontSize',16)
set(gca,'FontSize',12,'YAxisLocation','left');
legend('Group1','Group2','Group3','Location','northeast','FontSize',9)
text(3,1.8,'(b)','FontSize',12)

 linkaxes([ax1,ax2],'x')
 t.TileSpacing = 'tight';