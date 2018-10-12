% ENGO 545 Lab2
clear
close all
clc
%% Part 2: Acoustic Velocity

TSD_data = load('TempSalin.txt');
depth = TSD_data(:,1);
Temp = TSD_data(:,2);
Sal = TSD_data(:,3);

%Compute the range of depth, salinity and temp
fprintf('The range of temperature is: \t%f to %fm\n',min(Temp),max(Temp))
fprintf('The range of salinity is: \t\t%f to %fm\n',min(Sal),max(Sal))
fprintf('The range of depths is: \t\t%f to %fm\n',min(depth),max(depth))


for i = 1:length(depth)
   
    SofS(i) = SpeedSound(Temp(i), depth(i), Sal(i));
    TinL = 
    
end

plot(SofS, depth)
set(gca,'Ydir','reverse')
grid on
xlabel('Speed of Sound (m/s^2)')
ylabel('Depth (m)')