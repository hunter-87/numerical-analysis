rand('state',123);
s = rand(1,100); %100 steps
d = cumsum(((s > 0.5)*2) - 1);%d is the cumulative distance from the origin
for i = 1:size(s)
   clear all
   plot(double(1:i))
   answer = inputdlg('up or down?')
end