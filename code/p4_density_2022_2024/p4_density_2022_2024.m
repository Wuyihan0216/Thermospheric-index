%% 画从上到下四幅小图，D与ρPOD对比，曲线(a)500km+ (b)400km+ (c)300km+ (d)各高度散点图
%%
clc; clear all;
data_dir = pwd;

fname     = 'density_2022_2024.mat';

fullname  = [data_dir,'\' fname];

load(fullname);

fig = figure;
fig.Position = [100, 50, 700, 800];

% set
ft     = 14;
ftname = 'Arial';
lw = 0.8;
%%
s(1) = subplot(411)
plot(NRL_500,'LineWidth',1)
hold on
plot(SB_density_500,'LineWidth',1)
plot(myfunc_1,'LineWidth',1,'Color','#7E2F8E')
grid off
xticklabels('')
title('500km+')
ylabel('\rho [kg/m^3]');
set(gca,'fontsize',ft,'linewidth',1)
xlim([1 304])
%ylim([0*10^(-12) 1.6*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(a)','fontsize',ft,'color','k')
legend('\rho_{NRLMSIS 2.0}','\rho_{POD}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%

%%
s(2) = subplot(412);

plot(NRL_400,'LineWidth',1)
hold on
plot(SB_density_400,'LineWidth',1)
plot(myfunc_2,'LineWidth',1,'Color','#7E2F8E')
grid off
xticklabels('')
title('400km+')
ylabel('\rho [kg/m^3]');
set(gca,'fontsize',ft,'linewidth',1)
xlim([1 273])
ylim([0*10^(-12) 1.8*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(b)','fontsize',ft,'color','k')
legend('\rho_{NRLMSIS 2.0}','\rho_{POD}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%
%%
s(3) = subplot(413);

plot(NRL_300,'LineWidth',1)
hold on
plot(SB_density_300,'LineWidth',1)
plot(myfunc_3,'LineWidth',1,'Color','#7E2F8E')
grid off
xticklabels('')

set(gca,'fontsize',ft,'linewidth',1)
xlim([1 62])
xlabel('Day of year 2022-2024');
title('300km+')
ylabel('\rho [kg/m^3]');
ylim([0*10^(-12) 1.5*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(c)','fontsize',ft,'color','k')
legend('\rho_{NRLMSIS 2.0}','\rho_{POD}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%
%% 
s(4) = subplot(414);

 sz=18;
p_1=scatter(p0_500,SB_density_500,sz,'filled');
%p_1=plot(lnp0_aver,1000*density_500,'o','MarkerFaceColor','#0072BD','LineWidth',1.5);
hold off
hold on
p_2=scatter(p0_400,SB_density_400,sz,'filled');
p_3=scatter(p0_300,SB_density_300,sz,'filled','MarkerFaceColor','#77AC30');
%p_2=plot(lnp0_aver,SB_density,'o','MarkerFaceColor','#D95319','LineWidth',1.5);
hold off
x1=p0_500; x2=p0_400; x3=p0_300; 
hold on
p1=4.588*10^(-10) ;
p2=-4.448*10^(-15);
myfunc_1 =p1*x1 + p2;
p_4= line(x1,myfunc_1,'Color','#0072BD','LineStyle','-','LineWidth',1.5);
hold off
hold on
p3=4.002*10^(-10);
p4=2.661*10^(-13);
myfunc_2 =   p3*x2 + p4;
p_5= line(x2,myfunc_2,'Color','#D95319','LineStyle','-','LineWidth',1.5);
hold off
hold on
p5=1.103*10^(-9);
p6=-5.89*10^(-14);
myfunc_3 =   p5*x3 + p6;
p_5= line(x3,myfunc_3,'Color','#77AC30','LineStyle','-','LineWidth',1.5);
hold off

legend('500km+','400km+','300km+','','FontSize',8,'Location','east','NumColumns',1);%'box','off',
ylabel('\rho_{POD} [kg/m^3]');
xlabel('D');
%title('Correlation','FontSize',4);
ylim([0*10^(-12) 1.5*10^(-12)])
%xlim([-7.5 -6])
box on
%text(0.55*10^(-3),1.9*10^(-12),'(a)','FontSize',14)
%set(gca,'FontName','Arial','FontSize',14);
%set (gcf,'Position',[100,300,1270,550])
grid off
set(gca,'fontsize',ft,'linewidth',1)
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(d)','fontsize',ft,'color','k')