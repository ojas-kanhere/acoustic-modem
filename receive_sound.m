
close all
Fs = 8000;
[yr,Fs] = audioread('sound.wma');
plot(yr)

x = yr(:,1);
plot(x)
r = zeros(size(x,1),1);
for i = 1:size(x,1)
r(i) = corr(x(i:i+15999,1),y');
end
plot(r)