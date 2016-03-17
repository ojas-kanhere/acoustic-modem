function [z_avg] = my_moving_average(z)
z_avg = zeros(size(z));
for i = 1:size(z,2)-20
z_avg(i) = (z(i) + z(i+1) +z(i+2) + z(i+3) + z(i+4)+z(i+5) + z(i+6) +z(i+7) + z(i+8) + z(i+9)+z(i+10) + z(i+11) +z(i+12) + z(i+13) + z(i+14)+z(i+15) + z(i+16) +z(i+17) + z(i+18) + z(i+19))/20;
if(z_avg(i)>0.5)
    z_avg(i) = 1;
else
    z_avg(i) = 0;
end
end

