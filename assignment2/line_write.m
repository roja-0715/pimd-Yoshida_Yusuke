% シミュレーションから得られた角度データを仮定
t = time; 
angle = theta; % 例として、sin関数で角度データを生成

% 先端位置を計算
xt = L * cos(angle); % x座標
yt = L * sin(angle); % y座標

%グラフの正方形表示
figure(1)
axis square

%一周するまでfor文で回す．
for ii=1:length(t)
 % ラインの描画
    x1=[0 xt(ii)];
    y1=[0 yt(ii)];
    h1= line(x1,y1);
    if 0<=t(ii)&&t(ii)<=0.5
        set(h1,'color','r');
        set(h1,'lineWidth',2);
    end
    if 0.5<t(ii)&&t(ii)<=2.0
        set(h1,'color','g');
        set(h1,'lineWidth',2);
    end
    if 2.0<t(ii)&&t(ii)<=2.5
        set(h1,'color','b');
        set(h1,'lineWidth',2);
    end

%for文end
end
for ii=1:length(t)-1
    x2=[xt(ii) xt(ii+1)];
    y2=[yt(ii) yt(ii+1)];
    h2= line(x2,y2);
    set(h2,'color','k');
    set(h2,'lineWidth',1);
end
%x軸
h3=line([-0.3 0.3],[0 0]);
set(h3,'color','k');
set(h3,'lineWidth',1);
%y軸
h4=line([0 0],[-0.3 0.3]);
set(h4,'color','k');
set(h4,'lineWidth',1);
xlim([-0.3 0.3])
ylim([-0.3 0.3])
