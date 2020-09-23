new  = uint8(HW1_brain);

figure(1);imshow(new);colorbar;title('original'); 
p = imread('m.jpg');
%-------------hw1(a)-----------------------------------------------------------------
n = input('Enter a number:(power of 2)');
switch n
    case 2
        [c1_index,map] = gray2ind(p,2);
        c1 = ind2gray(c1_index,map);
        figure(2);imshow(c1);title('2 gray');
    case 4
        [c2_index,map] = gray2ind(p,4);
        c2 = ind2gray(c2_index,map);
        figure(2);imshow(c2);title('4 gray');
    case 8
        [c3_index,map] = gray2ind(p,8);
        c3 = ind2gray(c3_index,map);
        figure(2);imshow(c3);title('8 gray');
    case 16
        [c4_index,map] = gray2ind(p,16);
        c4 = ind2gray(c4_index,map);
        figure(2);imshow(c4);title('16 gray');
    case 32
        [c5_index,map] = gray2ind(p,32);
        c5 = ind2gray(c5_index,map);
        figure(2);imshow(c5);title('32 gray');
    case 64
        [c6_index,map] = gray2ind(p,64);
        c6 = ind2gray(c6_index,map);
        figure(2);imshow(c6);title('64 gray');
    case 128
        [c7_index,map] = gray2ind(p,128);
        c7 = ind2gray(c7_index,map);
        figure(2);imshow(c7);title('128 gray');
    case 256
        [c8_index,map] = gray2ind(p,256);
        c8 = ind2gray(c8_index,map);
        figure(2);imshow(c8);title('original(256)'); 
    otherwise
        disp('wrong number!');
end
%---------hw1(b)-----------------------------------------------------------------------
BI7 = bitget(c8,8);
figure(5);
imshow(logical(BI7));colorbar;
title('MSB plane');
%---------hw1(c)-----------------------------------------------------------------------
gray_MSB = bitset(new,8,0);
figure(3);imshow(gray_MSB);colorbar;title('MSB delete gray');
%---------hw1(d)-----------------------------------------------------------------------
gray_LSB = bitset(new,1,0);
figure(4);imshow(gray_LSB);colorbar;title('LSB delete gray');
