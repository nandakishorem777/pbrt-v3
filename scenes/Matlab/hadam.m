P= hadamard(64);
l=zeros(8,8);
k=zeros(64,64);
for i=1:length(P)
    g=P(i,:);
    for j=1:8
        l(j,:)=g(8*(j-1)+1:8*j);
        for x=1:length(l)
            for y=1:length(l)
                k(8*(x-1)+1:8*x,8*(y-1)+1:8*y)=l(x,y);
            end
        end
    end
            filename = sprintf('hadamardcode_%d.png',i );
        imwrite(k,filename)
end
figure;
imshow(l)
figure;
imshow(k)