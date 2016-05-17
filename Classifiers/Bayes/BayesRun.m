close all; clear; clc;
addpath('../Datasets/');
addpath('../Utils/');

 filename = 'iris-dataset.txt';
%  filename = 'dermatologia.txt'; 
%  filename = 'column_2C.txt';
%  filename = 'column_3C.txt';

base = loadDataset(filename);

riskMatrix = 1 - eye(length(unique(base.y)));

result = bayesRisk(base, 20, 0.8, riskMatrix);

% result = bayes(base, 20, 0.8, 'mvnpdf');
% resultQ = bayes(base, 20, 0.8, 'quadratica');
% result = bayes(base, 20, 0.8, 'matCovIgual');
% resultCI = bayes(base, 20, 0.8, 'matCovMean');
% result = bayes(base, 20, 0.8, 'matCovAll');
%  resultCDI = bayes(base, 20, 0.8, 'matCovDiagIgual');
%  resultECD = bayes(base, 20, 0.8, 'equiprovavelCovDif');
%  resultECI = bayes(base, 20, 0.8, 'equiprovavelCovIgual');
%  resultED = bayes(base, 20, 0.8, 'eclidianDistance');
%  resultMD = bayes(base, 20, 0.8, 'mahalanobisDistance');
 
 %Gerando Boxplots%
%  bp = [resultQ.acc; resultCI.acc; resultCDI.acc; resultECD.acc; resultECI.acc; resultED.acc; resultMD.acc];
%  bpt = bp';
%  figure, boxplot(bpt);
%  %title('Boxplot da Acur�cia para a base da Coluna com tr�s classes');
%  ylabel('Acur�cia');
%  xlabel('Forma de calcular g(x)');
 