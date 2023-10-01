function [dollars] = taxi_fare(d,t)
d=ceil(d);
t=ceil(t);
dollars=0;
d=d-1
dollars=dollars+5+(d*2)+(t*0.25);
end