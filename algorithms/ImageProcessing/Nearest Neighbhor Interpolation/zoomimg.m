clc;
clear variables;
image=imread('lena_color.bmp');
[r,c,d] = size(image);
zoom = 1.5;
zr=zoom*r;
zc=zoom*c;

for i=1:1:zr
     for j=1:1:zc
         x=i/zoom;
         mapi=round(x);
         y=j/zoom;
         mapj=round(y);
          if mapi==0
            mapi=1;
         end
         if mapj==0
             mapj=1;
         end
         res(i,j)=image(mapi,mapj);
     end
end
figure
imshow(image);
figure
imshow(res);