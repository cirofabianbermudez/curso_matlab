%%  Manera 1
clear; close all; clc;
data = readtable("tarantino.csv");
% temp1 = data.minutes_in(strcmp(data.type,'word'));
temp1 = strcmp(data.type,'word');               % solo las palabras
temp2 = strcmp(data.movie,'Reservoir Dogs');    % Solo 'Kill Bill: Vol. 1'
temp3 = strcmp(data.type,'death');              % solo las muertes
minutos = data.minutes_in( temp2 );     % minutos curses temp1 & temp2
minutos2 = data.minutes_in( temp3 & temp2 );    % minutos deaths

inicio = 0;       %0.4
final = 95.45;     %95.401
% lim_inf = inicio:paso:final-paso;         
% lim_sup = inicio+paso:paso:final;
% disp([lim_inf.' lim_sup.'])
grupos = linspace(inicio,final,93);         %95 esta chido
y = zeros(1,numel(grupos)-1);    y2 = zeros(1,numel(grupos)-1);
for i = 1:numel(grupos)-1
    y(i) = sum( grupos(i)<=minutos & minutos<grupos(i+1) );
    y2(i) = sum( grupos(i)<=minutos2 & minutos2<grupos(i+1) );
    fprintf("%f \t %f \t %d\n",grupos(i),grupos(i+1),y(i));
end
disp(grupos(2)-grupos(1));
bar(grupos(2:end),y,0.5);
hold on;
bar(grupos(2:end),y2);
ylim([0 20]);
grid on;
title('RESERVOIR DOGS, 1992');
texto = "min";
xlabel(texto);
ylabel('count of curses');

%%
clear; close all; clc;
data = readtable("tarantino.csv");
m = {'Jackie Brown', 'Pulp Fiction','Reservoir Dogs','Kill Bill: Vol. 2','Django Unchained','Inglorious Basterds','Kill Bill: Vol. 1'};
t = {'word','death'};
R = zeros(numel(m),numel(t)+1);

for i = 1:numel(m)
    temp1 = strcmp(data.movie,m(i));
    temp2 = strcmp(data.type,t(1));
    temp3 = strcmp(data.type,t(2));
    R(i,1) = sum(temp1 & temp2);
    R(i,2) = sum(temp1 & temp3);
    R(i,3) = R(i,1)/R(i,2);
end

t_curses = sum(R(:,1)); t_deaths = sum(R(:,2));
R = round([R ; [t_curses, t_deaths, t_curses/t_deaths] ],1) ;

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
format shortG
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
disp(results);
