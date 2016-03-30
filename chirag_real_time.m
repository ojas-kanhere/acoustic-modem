clear all
close all
fs = 1000;
H = dsp.AudioRecorder('SamplesPerFrame',1024);
y2 = zeros(257,1);
tic
%[yr,Fs] = audioread('sound.wma');
while toc < 5
       x = step(H); % 

        s = spectrogram(x(:,1)', 1024);
        y2 = [y2 abs(s)];

end
z = y2;
figure;imshow(z(1:100,:))
%z_logical = (z(6,:)>=1.5);% 2nd harmonic of 3.2
%figure;plot(z_logical)
%z_zero_cross = my_moving_average(z_logical);
%figure;plot(z_zero_cross)
