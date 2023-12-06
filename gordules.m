clear all
close all

%% M1_oda
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M1_deak_oktogon.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M1_deak_oktogon.csv',opts);

%ido
t_M1o=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M1o(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M1o = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M1o(i)=R(i,2);
end

%gyorsulas oldalra (y)
oldal_M1o = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M1o(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M1o = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M1o(i)=R(i,4)-g;
end

%zajszures
menet_M1o_sz=sgolayfilt(menet_M1o, 3,201);
oldal_M1o_sz=sgolayfilt(oldal_M1o, 3,501);
felle_M1o_sz=sgolayfilt(felle_M1o, 3,501);

%jerk
menet_M1o_iy = diff(menet_M1o_sz)./diff(t_M1o);
menet_M1o_ix = (t_M1o(2:end)+t_M1o(1:(end-1)))/2;
oldal_M1o_iy = diff(oldal_M1o_sz)./diff(t_M1o);
oldal_M1o_ix = (t_M1o(2:end)+t_M1o(1:(end-1)))/2;
felle_M1o_iy = diff(felle_M1o_sz)./diff(t_M1o);
felle_M1o_ix = (t_M1o(2:end)+t_M1o(1:(end-1)))/2;


%% M1_vissza
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M1_oktogon_deak.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M1_oktogon_deak.csv',opts);

%ido
t_M1v=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M1v(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M1v = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M1v(i)=R(i,2);
end

%gyorsulas oldalra (y)
oldal_M1v = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M1v(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M1v = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M1v(i)=R(i,4)-g;
end

%zajszures
menet_M1v_sz=sgolayfilt(menet_M1v, 3,201);
oldal_M1v_sz=sgolayfilt(oldal_M1v, 3,501);
felle_M1v_sz=sgolayfilt(felle_M1v, 3,501);

%jerk
menet_M1v_iy = diff(menet_M1v_sz)./diff(t_M1v);
menet_M1v_ix = (t_M1v(2:end)+t_M1v(1:(end-1)))/2;
oldal_M1v_iy = diff(oldal_M1v_sz)./diff(t_M1v);
oldal_M1v_ix = (t_M1v(2:end)+t_M1v(1:(end-1)))/2;
felle_M1v_iy = diff(felle_M1v_sz)./diff(t_M1v);
felle_M1v_ix = (t_M1v(2:end)+t_M1v(1:(end-1)))/2;

%% M2_oda
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M2_batyi_deak.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M2_batyi_deak.csv',opts);

%ido
t_M2o=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M2o(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M2o = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M2o(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M2o = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M2o(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M2o = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M2o(i)=R(i,4)-g;
end

%zajszures
menet_M2o_sz=sgolayfilt(menet_M2o, 3,201);
oldal_M2o_sz=sgolayfilt(oldal_M2o, 3,501);
felle_M2o_sz=sgolayfilt(felle_M2o, 3,501);

%jerk
menet_M2o_iy = diff(menet_M2o_sz)./diff(t_M2o);
menet_M2o_ix = (t_M2o(2:end)+t_M2o(1:(end-1)))/2;
oldal_M2o_iy = diff(oldal_M2o_sz)./diff(t_M2o);
oldal_M2o_ix = (t_M2o(2:end)+t_M2o(1:(end-1)))/2;
felle_M2o_iy = diff(felle_M2o_sz)./diff(t_M2o);
felle_M2o_ix = (t_M2o(2:end)+t_M2o(1:(end-1)))/2;

%% M2_vissza
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M2_deak_batyi.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M2_deak_batyi.csv',opts);

%ido
t_M2v=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M2v(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M2v = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M2v(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M2v = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M2v(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M2v = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M2v(i)=R(i,4)-g;
end

%zajszures
menet_M2v_sz=sgolayfilt(menet_M2v, 3,201);
oldal_M2v_sz=sgolayfilt(oldal_M2v, 3,501);
felle_M2v_sz=sgolayfilt(felle_M2v, 3,501);

%jerk
menet_M2v_iy = diff(menet_M2v_sz)./diff(t_M2v);
menet_M2v_ix = (t_M2v(2:end)+t_M2v(1:(end-1)))/2;
oldal_M2v_iy = diff(oldal_M2v_sz)./diff(t_M2v);
oldal_M2v_ix = (t_M2v(2:end)+t_M2v(1:(end-1)))/2;
felle_M2v_iy = diff(felle_M2v_sz)./diff(t_M2v);
felle_M2v_ix = (t_M2v(2:end)+t_M2v(1:(end-1)))/2;

%% M3_oda
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M3_kalvin_deak.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M3_kalvin_deak.csv',opts);

%ido
t_M3o=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M3o(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M3o = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M3o(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M3o = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M3o(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M3o = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M3o(i)=R(i,4)-g;
end

%zajszures
menet_M3o_sz=sgolayfilt(menet_M3o, 3,201);
oldal_M3o_sz=sgolayfilt(oldal_M3o, 3,501);
felle_M3o_sz=sgolayfilt(felle_M3o, 3,501);

%jerk
menet_M3o_iy = diff(menet_M3o_sz)./diff(t_M3o);
menet_M3o_ix = (t_M3o(2:end)+t_M3o(1:(end-1)))/2;
oldal_M3o_iy = diff(oldal_M3o_sz)./diff(t_M3o);
oldal_M3o_ix = (t_M3o(2:end)+t_M3o(1:(end-1)))/2;
felle_M3o_iy = diff(felle_M3o_sz)./diff(t_M3o);
felle_M3o_ix = (t_M3o(2:end)+t_M3o(1:(end-1)))/2;

%% M3_vissza
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M3_deak_kalvin.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M3_deak_kalvin.csv',opts);

%ido
t_M3v=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M3v(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M3v = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M3v(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M3v = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M3v(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M3v = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M3v(i)=R(i,4)-g;
end

%zajszures
menet_M3v_sz=sgolayfilt(menet_M3v, 3,201);
oldal_M3v_sz=sgolayfilt(oldal_M3v, 3,501);
felle_M3v_sz=sgolayfilt(felle_M3v, 3,501);

%jerk
menet_M3v_iy = diff(menet_M3v_sz)./diff(t_M3v);
menet_M3v_ix = (t_M3v(2:end)+t_M3v(1:(end-1)))/2;
oldal_M3v_iy = diff(oldal_M3v_sz)./diff(t_M3v);
oldal_M3v_ix = (t_M3v(2:end)+t_M3v(1:(end-1)))/2;
felle_M3v_iy = diff(felle_M3v_sz)./diff(t_M3v);
felle_M3v_ix = (t_M3v(2:end)+t_M3v(1:(end-1)))/2;

%% M4_oda
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M4_kalvin_moricz.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M4_kalvin_moricz.csv',opts);

%ido
t_M4o=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M4o(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M4o = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M4o(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M4o = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M4o(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M4o = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M4o(i)=R(i,4)-g;
end

%zajszures
menet_M4o_sz=sgolayfilt(menet_M4o, 3,201);
oldal_M4o_sz=sgolayfilt(oldal_M4o, 3,501);
felle_M4o_sz=sgolayfilt(felle_M4o, 3,501);

%jerk
menet_M4o_iy = diff(menet_M4o_sz)./diff(t_M4o);
menet_M4o_ix = (t_M4o(2:end)+t_M4o(1:(end-1)))/2;
oldal_M4o_iy = diff(oldal_M4o_sz)./diff(t_M4o);
oldal_M4o_ix = (t_M4o(2:end)+t_M4o(1:(end-1)))/2;
felle_M4o_iy = diff(felle_M4o_sz)./diff(t_M4o);
felle_M4o_ix = (t_M4o(2:end)+t_M4o(1:(end-1)))/2;

%% M4_vissza
opts = detectImportOptions('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M4_moricz_kalvin.csv');
R = readmatrix('D:\Users\Vanda\Documents\BME\5.félév\gördülés din\hazi\M4_moricz_kalvin.csv',opts);

%ido
t_M4v=ones(size(R,1),1);
for i=1:(size(R,1))
    t_M4v(i)= R(i,1);
end

%gyorsulas menetirany (x)
menet_M4v = ones(size(R,1),1);
for i=1:(size(R,1))
    menet_M4v(i)=-1*R(i,2);
end

%gyorsulas oldalra (y)
oldal_M4v = ones(size(R,1),1);
for i=1:(size(R,1))
    oldal_M4v(i)=R(i,3);
end

%gyorsulas le-fel (z) --> le kell vonni g-t
g=9.80815;
felle_M4v = ones(size(R,1),1);
for i=1:(size(R,1))
    felle_M4v(i)=R(i,4)-g;
end

%zajszures
menet_M4v_sz=sgolayfilt(menet_M4v, 3,201);
oldal_M4v_sz=sgolayfilt(oldal_M4v, 3,501);
felle_M4v_sz=sgolayfilt(felle_M4v, 3,501);

%jerk
menet_M4v_iy = diff(menet_M4v_sz)./diff(t_M4v);
menet_M4v_ix = (t_M4v(2:end)+t_M4v(1:(end-1)))/2;
oldal_M4v_iy = diff(oldal_M4v_sz)./diff(t_M4v);
oldal_M4v_ix = (t_M4v(2:end)+t_M4v(1:(end-1)))/2;
felle_M4v_iy = diff(felle_M4v_sz)./diff(t_M4v);
felle_M4v_ix = (t_M4v(2:end)+t_M4v(1:(end-1)))/2;

%% plot

%menet/szurt
%M1
figure(Name='M1 menet');
subplot(2,2,1);
plot(t_M1o,menet_M1o_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M1v,menet_M1v_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(menet_M1o_ix,menet_M1o_iy,"Color","#EDB120");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(menet_M1v_ix,menet_M1v_iy,"Color","#EDB120");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M2
figure(Name='M2 menet');
subplot(2,2,1);
plot(t_M2o,menet_M2o_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M2v,menet_M2v_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(menet_M2o_ix,menet_M2o_iy,"Color","#A2142F");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(menet_M2v_ix,menet_M2v_iy,"Color","#A2142F");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M3
figure(Name='M3 menet');
subplot(2,2,1);
plot(t_M3o,menet_M3o_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M3v,menet_M3v_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(menet_M3o_ix,menet_M3o_iy,"Color","#0072BD");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(menet_M3v_ix,menet_M3v_iy,"Color","#0072BD");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M4
figure(Name='M4 menet');
subplot(2,2,1);
plot(t_M4o,menet_M4o_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M4v,menet_M4v_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(menet_M4o_ix,menet_M4o_iy,"Color","#77AC30");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(menet_M4v_ix,menet_M4v_iy,"Color","#77AC30");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');

%menet/szuretlen
%M1
figure(Name='M1 menet');
subplot(1,2,1);
plot(t_M1o,menet_M1o,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M1v,menet_M1v,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M2
figure(Name='M2 menet');
subplot(1,2,1);
plot(t_M2o,menet_M2o,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M2v,menet_M2v,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M3
figure(Name='M3 menet');
subplot(1,2,1);
plot(t_M3o,menet_M3o,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M3v,menet_M3v,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M4
figure(Name='M4 menet');
subplot(1,2,1);
plot(t_M4o,menet_M4o,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M4v,menet_M4v,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');

%oldal/szurt
%M1
figure(Name='M1 oldal');
subplot(2,2,1);
plot(t_M1o,oldal_M1o_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M1v,oldal_M1v_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(oldal_M1o_ix,oldal_M1o_iy,"Color","#EDB120");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(oldal_M1v_ix,oldal_M1v_iy,"Color","#EDB120");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M2
figure(Name='M2 oldal');
subplot(2,2,1);
plot(t_M2o,oldal_M2o_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M2v,oldal_M2v_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(oldal_M2o_ix,oldal_M2o_iy,"Color","#A2142F");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(oldal_M2v_ix,oldal_M2v_iy,"Color","#A2142F");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M3
figure(Name='M3 oldal');
subplot(2,2,1);
plot(t_M3o,oldal_M3o_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M3v,oldal_M3v_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(oldal_M3o_ix,oldal_M3o_iy,"Color","#0072BD");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(oldal_M3v_ix,oldal_M3v_iy,"Color","#0072BD");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
%M4
figure(Name='M4 oldal');
subplot(2,2,1);
plot(t_M4o,oldal_M4o_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,2);
plot(t_M4v,oldal_M4v_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(2,2,3);
plot(oldal_M4o_ix,oldal_M4o_iy,"Color","#77AC30");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');
subplot(2,2,4);
plot(oldal_M4v_ix,oldal_M4v_iy,"Color","#77AC30");
ylabel('jerk [m/s^3]');
xlabel('idő[s]');


%oldal/eredeti
%M1
figure(Name='M1 oldal');
subplot(1,2,1);
plot(t_M1o,oldal_M1o,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M1v,oldal_M1v,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M2
figure(Name='M2 oldal');
subplot(1,2,1);
plot(t_M2o,oldal_M2o,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M2v,oldal_M2v,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M3
figure(Name='M3 oldal');
subplot(1,2,1);
plot(t_M3o,oldal_M3o,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M3v,oldal_M3v,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M4
figure(Name='M4 oldal');
subplot(1,2,1);
plot(t_M4o,oldal_M4o,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M4v,oldal_M4v,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');

%felle/szurt
%M1
figure(Name='M1 felle');
subplot(1,2,1);
plot(t_M1o,felle_M1o_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M1v,felle_M1v_sz,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M2
figure(Name='M2 felle');
subplot(1,2,1);
plot(t_M2o,felle_M2o_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M2v,felle_M2v_sz,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M3
figure(Name='M3 felle');
subplot(1,2,1);
plot(t_M3o,felle_M3o_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M3v,felle_M3v_sz,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M4
figure(Name='M4 felle');
subplot(1,2,1);
plot(t_M4o,felle_M4o_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M4v,felle_M4v_sz,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');

%felle/eredeti
%M1
figure(Name='M1 felle');
subplot(1,2,1);
plot(t_M1o,felle_M1o,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M1v,felle_M1v,"Color","#EDB120");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M2
figure(Name='M2 felle');
subplot(1,2,1);
plot(t_M2o,felle_M2o,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M2v,felle_M2v,"Color","#A2142F");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
%M3
figure(Name='M3 felle');
subplot(1,2,1);
plot(t_M3o,felle_M3o,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M3v,felle_M3v,"Color","#0072BD");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');

%M4
figure(Name='M4 felle');
subplot(1,2,1);
plot(t_M4o,felle_M4o,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');
subplot(1,2,2);
plot(t_M4v,felle_M4v,"Color","#77AC30");
ylabel('gyorsulás [m/s^2]');
xlabel('idő[s]');