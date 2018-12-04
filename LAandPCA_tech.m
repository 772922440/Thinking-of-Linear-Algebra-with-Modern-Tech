pho = imread('1.jpeg');
res = rgb2gray(pho);
res1 = im2double(res);
[X,B] = eig(res1);  % eigenvalues decomposition
n = 10; %get the former n eigenvalues
temp = zeros(size(B));
for i = 1 : size(B,1)
    if i <=  n
        temp(i,i) = 1;
    end
end

B = B .* temp;
imshow(X*B*inv(X));