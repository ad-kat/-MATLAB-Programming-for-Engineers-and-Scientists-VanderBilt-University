p=1000;
t=2;
r=10;
for i=1:1:2
    ci=(p*1*r)/100.0;
    debt=p+ci;
    p=debt;
end