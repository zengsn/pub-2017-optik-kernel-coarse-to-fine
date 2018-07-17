% runOnGT.m
% GT���ʵ�����

clear all;

% ��������       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dbName = 'GT';
pathPrefix='../datasets/Georgia Tech face database crop/';
firstSample=imread('../datasets/Georgia Tech face database crop/1_1.jpg');
%[size_a size_b size_c]=size(firstSample);
[row col]=size(rgb2gray(firstSample));
numOfSamples=15;
numOfClasses=50;

for cc=1:numOfClasses
    for ss=1:numOfSamples
        path=[pathPrefix int2str(cc) '_' int2str(ss) '.jpg'];
        colored=imread(path);
        grayed=double(rgb2gray(colored));
        inputData(cc,ss,:,:)= grayed(:,:);
    end
end
inputData=double(inputData); % ���е���������

% ���ò���       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

redoDeviation = 0; % �Ƿ��Ż����
minTrains = 1;  % ѵ��������
maxTrains = 7;  % ѵ��������
runWithNTrainings; % run with n training samples
disp('Test done!');