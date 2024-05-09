%% track
clc; clear all;
data_dir = pwd;

fname1     = '48883.mat';
fname2     = '52181.mat';
fname3     = '46300.mat';
fullname1  = [data_dir,'\' fname1];
fullname2  = [data_dir,'\' fname2];
fullname3  = [data_dir,'\' fname3];
load(fullname1);
load(fullname2);
load(fullname3);

figure
t = tiledlayout(1,2,'TileSpacing','tight');
%画图1—————————————————————————————————
nexttile(1)
ax=nexttile(1) ;
load topo;
h1=plot3( P_48883(1,:),P_48883(2,:),P_48883(3,:),'LineWidth',2.5);
hold on
h2=plot3( P_52181(1,:),P_52181(2,:),P_52181(3,:),'LineWidth',2.5);
h3=plot3( P_46300(1,:),P_46300(2,:),P_46300(3,:),'LineWidth',2.5);
hold off
grid on;
hold on
[X,Y,Z] = sphere;
r = 6371000;
X2 = X * r;
Y2 = Y * r;
Z2 = Z * r;
s=surface(X2,Y2,Z2,'FaceColor','texturemap','CData',topo);
colormap(topomap1);
%surf(X2,Y2,Z2)
axis equal
axis off
hold off
legend([h1,h2,h3],'Group1','Group2','Group3','Location', 'northeast')
text(-4012180, 4850190, 0,'(a)','FontSize',14)
%title('Satellite Track','FontWeight','bold','FontName','Times New Roman','FontSize',14);
set (gcf,'Position',[100,300,1270,550])
%画图2—————————————————————————————————
nexttile(2)
ax=nexttile(2) ;
%导入世界地图
hold on
m_proj('miller');%不写lon的时候，大西洋位于图像中间；写lon的时候，太平洋位于图像中间
%m_pcolor(lon,fi,Deg);
shading interp;
%m_coast('linewidth',1.5,'color',[.4 .4 .4]);%绘制海岸线,不填色
m_coast('patch',[0.8 0.8 0.8]);%绘制海岸线，填色
%m_gshhs_c('patch',[0.8 1.0 0.8]);%绘制海岸线，粗糙填色
m_grid('linestyle','--');
sz=25;
sc1=m_scatter(Q_48883(2,:),Q_48883(1,:),sz,'filled')
sc2=m_scatter(Q_46300(2,:),Q_46300(1,:),sz,'filled')
sc3=m_scatter(Q_52181(2,:),Q_52181(1,:),sz,'filled')
%legend([sc1,sc2,sc3],'Group1','Group2','Group3','Location', 'northwest')
xlabel('Lon(°)','fontsize',15,'FontName','Arial');
ylabel('Lat(°)','fontsize',15,'FontName','Arial');
text(-2.9,1.8,'(b)','FontSize',14)
%title('Satellite Ground Track','fontsize',15,'FontName','Times New Roman','FontWeight','bold');
set (gcf,'Position',[100,300,1270,550])