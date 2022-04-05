% WRE ASSIGNMENT #11: DATA VISUALIZATION PLOT AS SINGLE M-FILE
%

% PREPARE

clear all; % clear workspace memory
clc; % clear workspace window 

% LOAD DATA, DEFINE VARIABLES

load LeafRiverData.txt; % load data file
rain=LeafRiverData(:,12); % select 12th column as rain vector
flow=LeafRiverData(:,6); % select 6th column as flow vector
units = 'mm/d';

figure; % creates a new figure window so that currently open figures do not get overwritten

% SUBPLOT 0

subplot(311) % define a 3 row, 1 column plot distribution, 311 defines the first plot
bar(rain,'b','edgecolor','b'); % bar plot with edgecolor blue
axis ij % turn the plot upside down
title('Visualization of Watershed-Scale Rainfall-Runoff Data'); 
legend('Rainfall Time Series','Location','SouthWest'); 
legend boxoff; % delete the borders from the legend
xlabel('Time [d]');
ylabel(['Rainfall [' units ']']); % plot ylabel with units of mm/d as defined earlier
axis([1 length(rain) 0 max(rain)]); % define x-axis 1 to length rain vector & y-axis 0 to maximum value of vector rain
  
% SUBPLOT 1

subplot(312)
area(flow,'facecolor','g','edgecolor','g');
legend('Flow Time Series','Location','NorthEast'); legend boxoff;;
xlabel('Time [d]');
ylabel(['Flow [' units ']'])
axis([1 length(flow) 0 max(flow)]);

% SUBPLOT 2

fd=sort(flow,1,'descend'); % sort data in descending order
pt=1:length(fd); % create a vector of indices from 1 to length of the time series
pt=(pt/length(fd))*100; % this lines calculates the percentage time flow is equalled or exceeded

subplot(337) % here I changed to a nine plot figure so that I can plot three plots in the bottom row
semilogy(pt,fd, 'k.', 'markersize', 1);  
                    % this line creates a plot with a logarithmic vertical axis and a normal horizontal axis
                    % it plots the percentage time flow is equalled or exceeded versus the flow value
legend('Flow Duration Curve (FDC)','Location','NorthEast'); legend boxoff;
xlabel('Percentage Time (equaled or exceeded)');
ylabel(['Flow [' units ']']);

% SUBPLOT 4

flowslope = [1 diff(flow)']; % takes the derivative to separate rising (positive derivative) from falling limb
[J] = find(flowslope>0); % J is the vector of location in vector 'flowslope' where its members are above 0 (positive)
rising = flow(J); % define a new vector 'rising' 

fd_rising=sort(rising,1,'descend'); % sort data in descending order
pt_rising=1:length(fd_rising); % create a vector of indices from 1 to length of the time series
pt_rising=(pt_rising/length(fd_rising))*100; % this lines calculates the percentage time flow is equalled or exceeded

subplot(338)
semilogy(pt_rising,fd_rising, 'r.', 'markersize', 1);  
                    % this line creates a plot with a logarithmic vertical axis and a normal horizontal axis
                    % it plots the percentage time flow is equalled or exceeded versus the flow value
legend('Rising Limb FDC','Location','NorthEast'); legend boxoff;
xlabel('Percentage Time (equaled or exceeded)');
ylabel(['Flow [' units ']'])
 
    
% SUBPLOT 5

flowslope = [1 diff(flow)'];
[I] = find(flowslope<0);
falling = flow(I);

fd_falling=sort(falling,1,'descend'); % sort data in descending order
pt_falling=1:length(fd_falling); % create a vector of indices from 1 to length of the time series
pt_falling=(pt_falling/length(fd_falling))*100; % this lines calculates the percentage time flow is equalled or exceeded

subplot(339)
semilogy(pt_falling,fd_falling, 'm.', 'markersize', 1);  
                    % this line creates a plot with a logarithmic vertical axis and a normal horizontal axis
                    % it plots the percentage time flow is equalled or exceeded versus the flow value
legend('Falling Limb FDC','Location','NorthEast'); legend boxoff;
xlabel('Percentage Time (equaled or exceeded)');
ylabel(['Flow [' units ']']);