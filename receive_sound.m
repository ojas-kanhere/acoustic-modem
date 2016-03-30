clear all
close all
fs = 8000;
[yr,fs] = audioread('long.m4a');

figure;plot(yr)

s = spectrogram(yr, 300);

z = abs(s);

%figure;imshow(abs(s))
z_logical = (z(6,:)>=1.5);% 2nd harmonic of 3.2
figure;plot(z_logical)
z_zero_cross = my_moving_average(z_logical);
figure;plot(z_zero_cross)

k = find(z_zero_cross);
for i = 1:size(k,2)

if ( k(i)+49==k(i+49))
    start_time = k(i);
    break
end
end
if (i == 50)
disp('decode fail')
else 
    
j = 1;
while((start_time + (j)*588)<size(z_zero_cross,2))
    
number_of_bits = j;
j = j+1;
end
decode = zeros(1,number_of_bits);
for j = 1:number_of_bits

symbol = z_zero_cross(1,start_time + (j-1)*588:start_time + (j)*588);
a = sum(symbol)/589;
if(a>0.5)
    a = 1;
else
    a=0;
end
decode(j) = a;
end

last_index = find(decode,1,'last');
decode = decode(1:last_index);

end