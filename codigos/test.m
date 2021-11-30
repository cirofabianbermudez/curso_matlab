clear; close all; clc;
Tb1 = readtable('netflix_titles.csv');   
Tb1.movie =  strcmp(Tb1.type,'Movie');
Tb1.show =  strcmp(Tb1.type,'TV Show');
Tb1.d1 =  strcmp(Tb1.director,'Quentin Tarantino');

% years = Tb1.release_year;
% type = Tb1.type;
% movie_s = zeros(size(type));
% show_s = zeros(size(type));

% for i = 1:8807
%     movie_s(i) = strcmp(type{i},'Movie');
%     show_s(i) = strcmp(type{i},'TV Show');
% end