clear all
close all
fs = 1000;
[yr,fs] = audioread('Test2.m4a');
%[yr,Fs] = audioread('sound.wma');
figure;plot(yr)

s = spectrogram(yr, 300);

z = abs(s);

figure;imshow(abs(s))
z_logical = (z(6,:)>=1.5);% harmonic of 3.2
figure;plot(z_logical)
z_zero_cross = my_moving_average(z_logical);
figure;plot(z_zero_cross)
