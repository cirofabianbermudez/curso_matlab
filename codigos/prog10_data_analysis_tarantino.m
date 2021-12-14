%% prog10_analisis_de_datos_con_tablas
clear; close all; clc;
data = readtable("tarantino.csv");
temp1 = strcmp(data.type,'word');            % 1 en 'words'
temp2 = strcmp(data.movie,'Reservoir Dogs'); % 1 en 'Reservoir Dogs'
temp3 = strcmp(data.type,'death');           % 1 en 'death'
minutos = data.minutes_in( temp2 );          % minutos de Reservoir Dogs'
minutos2 = data.minutes_in( temp3 & temp2 ); % minutos con 'death' y 'Reservoir Dogs'

inicio = 0;
final = 95.45;
grupos = linspace(inicio,final,95);          % Generar grupos
y1 = zeros(1,numel(grupos)-1);    
y2 = zeros(1,numel(grupos)-1);
for i = 1:numel(grupos)-1
    y1(i) = sum( grupos(i)<=minutos & minutos<grupos(i+1) );
    y2(i) = sum( grupos(i)<=minutos2 & minutos2<grupos(i+1) );
    fprintf("%f \t %f \t %d\n",grupos(i),grupos(i+1),y1(i));
end
fprintf("Tamanio de grupo: %f\n",grupos(2)-grupos(1));
bar(grupos(2:end),y1,0.5);
hold on;
bar(grupos(2:end),y2);
ylim([0 20]); xlim([0 100]);
grid on; grid minor;
title('RESERVOIR DOGS, 1992');
xlabel("min"); ylabel('count of curses');
%%
clear; close all; clc;
data = readtable("tarantino.csv");
m = {'Jackie Brown', 'Pulp Fiction','Reservoir Dogs','Kill Bill: Vol. 2','Django Unchained','Inglorious Basterds','Kill Bill: Vol. 1'};
t = {'word','death'};
R = zeros(numel(m),numel(t)+1);         % 1 extra para TOTAL

for i = 1:numel(m)
    temp1 = strcmp(data.movie,m(i));
    temp2 = strcmp(data.type,t(1));
    temp3 = strcmp(data.type,t(2));
    R(i,1) = sum(temp1 & temp2);
    R(i,2) = sum(temp1 & temp3);
    R(i,3) = R(i,1)/R(i,2);
end

t_curses = sum(R(:,1)); t_deaths = sum(R(:,2));
R = round( [R ; [t_curses, t_deaths, t_curses/t_deaths] ],1) ;

film = [m.'; 'TOTAL'];
curses = R(:,1);
deaths = R(:,2);
ratio = R(:,3);
results = table(film,curses,deaths,ratio);
format short;
disp(results);
%%
clear; close all; clc;
data = readtable("tarantino.csv");
w = {'fucking','shit','fuck','fucks','n-word','goddamn','goddamned','motherfucker','motherfuckers','bitch','bitches','hell','damn','damned','motherfucking'};
R = zeros(numel(w),2);

n_elem = sum(strcmp(data.type,'word'));

for i = 1:numel(w) 
   R(i,1) = sum( strcmp( data.word,w(i) ) );
   R(i,2) = (R(i,1)/n_elem )*100;
end
R = round(R,1);

word = w.';
count = R(:,1);
percent = R(:,2);
results = table(word,count,percent);
format short;
disp(results);
%% 
clear; close all; clc;
data = readtable("tarantino.csv");

total = sum(contains(data.word,'fuck'));
w = {'fucking','fuck','motherfucker','motherfucking','fucked','motherfuckers','fucker','fucks','fuckup','fuckhead','fuckface','fuckers'};
R = zeros(numel(w),2);

for i = 1:numel(w) 
   R(i,1) = sum( strcmp( data.word,w(i) ) );
   R(i,2) = (R(i,1)/total )*100;
end

t_count = sum(R(:,1)); t_percent = sum(R(:,2));
R = round([R ; [t_count, t_percent] ],1) ;

type_of_fuck = [w.'; 'TOTAL'];
count = R(:,1);
percent = R(:,2);
results = table(type_of_fuck,count,percent); 
format shortG
disp(results);