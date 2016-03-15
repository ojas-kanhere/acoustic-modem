fs = 8000;
T = 2; % 2 seconds duration
        t = 0:(1/fs):T-1/fs;
         f = 130.81;
       a = 1;
       b=0;
       y = 0.5*sin(2*pi*f*t);
       y2 = b*sin(2*pi*f*t);
       
       sound(y, fs);
      
      pause (4)
       sound(y, fs);
