fs = 8000;
T = 2; % 2 seconds duration
        t = 0:(1/fs):T-1/fs;
         f = 100;
       a =5;
       b=0;
       y = a*sin(2*pi*f*t);
       y2 = b*sin(2*pi*f*t);
       y_send = [y,zeros(1,16000),zeros(1,16000),y,zeros(1,16000),y];
       sound(y_send, fs);
      
     % pause (2)
     %  sound(y, fs);
       plot(y_send)
