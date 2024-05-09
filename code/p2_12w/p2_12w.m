%%
clc; clear all;
data_dir = pwd;

fname     = '12w.mat';
fullname  = [data_dir,'\' fname];
load(fullname);

%————————————————————————————————————————画2023年1月1日-4月30日的lnp——H图，散点拟合，曲线斜率W
x=1:120;
sz=38;
fig = figure;
fig.Position = [100, 50, 1200, 700];

% set
ft     = 18;
ftname = 'Arial';
lw = 1.6;
t = tiledlayout(3,4,'TileSpacing','none');
ylabel(t,'$\mathrm{ln(-d\sqrt{a}/dt)}$','Interpreter','latex','FontSize',18,'FontName',ftname)
xlabel(t,'$\mathrm{a-a_0}$','Interpreter','latex','FontSize',18,'FontName',ftname)

%画条形图1——————————————————————————————————48883
nexttile(1)
ax=nexttile(1) ;

x=R_R0_48883;
p_1=plot(R_R0_48883,lnD_sr_48883,'o','LineWidth',1.2);

p1=-0.02382 ;
p2=-6.699;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=42.0km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(a)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on
set(gca,'XDir','reverse','XTickLabel',[],'FontName',ftname,'FontSize',14);

%画条形图2———————————————————————————————————48884
nexttile(2)
ax=nexttile(2) ;
x=R_R0_48884;
p_1=plot(R_R0_48884,lnD_sr_48884,'o','LineWidth',1.2);
p1=-0.02327 ;
p2=-6.69;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=43.0km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(b)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图3————————————————————————————————————48886
nexttile(3)
ax=nexttile(3) ;
x=R_R0_48886;
p_1=plot(R_R0_48886,lnD_sr_48886,'o','LineWidth',1.2);
p1=-0.02546 ;
p2=-6.688;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-4.5,-4.5,'W=39.3km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(c)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图4————————————————————————————————————48888
nexttile(4)
ax=nexttile(4) ;
x=R_R0_48888;
p_1=plot(R_R0_48888,lnD_sr_48888,'o','LineWidth',1.2);
p1=-0.02225 ;
p2=-6.711;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-4.5,-4.5,'W=44.9km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(d)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图5————————————————————————————————————48890
nexttile(5)
ax=nexttile(5) ;
x=R_R0_48890;
p_1=plot(R_R0_48890,lnD_sr_48890,'o','LineWidth',1.2);
p1=-0.02123 ;
p2=-6.702;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=47.1km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(e)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on

set(gca,'XDir','reverse','XTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图6————————————————————————————————————48893
nexttile(6)
ax=nexttile(6) ;
x=R_R0_48893;
p_1=plot(R_R0_48893,lnD_sr_48893,'o','LineWidth',1.2);
p1=-0.02201 ;
p2=-6.741;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=44.2km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(f)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图7————————————————————————————————————48894
nexttile(7)
ax=nexttile(7) ;
x=R_R0_48894;
p_1=plot(R_R0_48894,lnD_sr_48894,'o','LineWidth',1.2);
p1=-0.02154 ;
p2=-6.713;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=46.4km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(g)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图8————————————————————————————————————48895
nexttile(8)
ax=nexttile(8) ;
x=R_R0_48895;
p_1=plot(R_R0_48895,lnD_sr_48895,'o','LineWidth',1.2);
p1=-0.02516 ;
p2=-6.706;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=39.7km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(h)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图9————————————————————————————————————48896
nexttile(9)
ax=nexttile(9) ;
x=R_R0_48896;
p_1=plot(R_R0_48896,lnD_sr_48896,'o','LineWidth',1.2);
p1=-0.02375 ;
p2=-6.685;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=42.1km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(i)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
xticks([-16 -8 0 8 16])
xticklabels([-16 -8 0 8 16])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on

set(gca,'XDir','reverse','FontName',ftname,'FontSize',14);
%画条形图10————————————————————————————————————48897
nexttile(10)
ax=nexttile(10) ;
x=R_R0_48897;
p_1=plot(R_R0_48897,lnD_sr_48897,'o','LineWidth',1.2);
p1=-0.02306 ;
p2=-6.705;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-4.5,-4.5,'W=43.4km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(j)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
xticks([-16 -8 0 8 16])
xticklabels([-16 -8 0 8 16])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图11————————————————————————————————————48899
nexttile(11)
ax=nexttile(11) ;
x=R_R0_48899;
p_1=plot(R_R0_48899,lnD_sr_48899,'o','LineWidth',1.2);
p1=-0.02314 ;
p2=-6.725;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-4.5,-4.5,'W=43.2km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(k)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
xticks([-16 -8 0 8 16])
xticklabels([-16 -8 0 8 16])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14);
%画条形图12————————————————————————————————————48904
nexttile(12)
ax=nexttile(12) ;
x=R_R0_48904;
p_1=plot(R_R0_48904,lnD_sr_48904,'o','LineWidth',1.2);
p1=-0.02183 ;
p2=-6.718;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-4.5,-4.5,'W=45.8km','FontName',ftname,'FontSize',14)
text(19,-4.5,'(l)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-20 20])
xticks([-16 -8 0 8 16])
xticklabels([-16 -8 0 8 16])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14)




