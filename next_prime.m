function k = next_prime(n)
flag=0;
k=n+1;
while flag==0    
    if isprime(k)==1
        flag=1
    else
        k=k+1
    end
end

function result = is_prime(n)
flag=0;
a=n-1;
while a>1
    if mod(n,a)~=0
        flag=1
    end
end