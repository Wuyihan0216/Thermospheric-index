%%
clc; clear all;
data_dir = pwd;

fname1     = 'f107_120.mat';
fname2     = 'SWARMB_density.mat';
fname3     = 'p0.mat';
fname4     = 'NRLMSIS_den_500.mat';

fullname1  = [data_dir,'\' fname1];
fullname2  = [data_dir,'\' fname2];
fullname3  = [data_dir,'\' fname3];
fullname4  = [data_dir,'\' fname4];
load(fullname1);load(fullname2);load(fullname3);load(fullname4);

%%
%plot D & ρ(msis) & ρ(pod) corr.
figure
t = tiledlayout(1,2,'TileSpacing','tight');
%—————————————————————————————————(a)
nexttile(1)
ax=nexttile(1) ;
 sz=38;
hold on
p_1=scatter(p0_aver,1000*density_500,sz,'filled');
hold off
hold on
p_2=scatter(p0_aver,SB_density,sz,'filled');
hold off
hold on
x1=p0_aver;
x2=p0_aver;
p1=2.816*10^(-10) ;
p2=5.575*10^(-13);
myfunc_N =p1*x1 + p2;
p_3= line(x1,myfunc_N,'Color','#0072BD','LineStyle','-','LineWidth',1.5);
hold off
hold on
p3=5.519*10^(-10);
p4=1.388*10^(-13);
myfunc_S =   p3*x2 + p4;
p_4= line(x2,myfunc_S,'Color','#D95319','LineStyle','-','LineWidth',1.5);
hold off
%I = abs(myfunc_N-1000*density_500) > 1.5*std(1000*density_500);% 
%outliers = excludedata(lnp0_aver.', 1000*density_500, 'indices', I); %outliers: 49,57
xx=[0.000870771 0.00104448];
yy=[1.71336*10^(-12) 1.74617*10^(-12)];
hold on
plot(xx,yy,'m*','MarkerSize',8);
hold off
legend('\rho_{NRLMSIS 2.0}','\rho_{POD}','','FontSize',12,'Location','northeast','NumColumns',1);
ylabel('\rho [kg/m^3]');
xlabel('D');
ylim([0 2*10^(-12)])

box on
text(0.55*10^(-3),1.9*10^(-12),'(a)','FontSize',14)
set(gca,'FontName','Arial','FontSize',14);
set (gcf,'Position',[100,300,1270,550])
%—————————————————————————————————(b)
nexttile(2)
ax=nexttile(2) ;

aa=[x',x'];
bb=[1000*density_500,SB_density];
[hAx,hLine1,hLine2] = plotyy(aa,bb,x,f107');

ylabel(hAx(2),'F10.7','FontName','Arial','FontSize',15.4) % right y-axis

set(hAx(1),'YTick',[0*10^(-12) 0.2*10^(-12) 0.4*10^(-12) 0.6*10^(-12) 0.8*10^(-12) ...
    1*10^(-12) 1.2*10^(-12) 1.4*10^(-12) 1.6*10^(-12) 1.8*10^(-12) 2*10^(-12)],'YtickLabels','')
set(hAx(2), 'FontName','Arial','FontSize',14,'YTick',[0 50 100 150 200 250 300 350 400]); 
set(hLine1,'LineWidth',1.2)
hLine2.LineStyle = '--';
hLine2.LineWidth = 1.2;
hold on
xxx=[49 57];
yyy=[1.74617*10^(-12) 1.71336*10^(-12)];
plot(myfunc_S,'LineStyle','-','LineWidth',1.2,'Color','#7E2F8E');
plot(xxx,yyy,'m*','MarkerSize',8)
hold off
legend('\rho_{NRLMSIS 2.0}','\rho_{POD}','\rho_{D}')
ylim([0 2*10^(-12)])
xlabel('Day of year 2023')

text(3,1.9*10^(-12),'(b)','FontSize',14)
set(gca,'FontName','Arial','FontSize',14);
set (gcf,'Position',[100,300,1270,550])