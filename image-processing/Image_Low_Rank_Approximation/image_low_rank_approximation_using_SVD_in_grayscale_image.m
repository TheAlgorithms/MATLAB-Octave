img_name = input('Enter file name of image in directory within quotes : ');

% number of components (singular "layers") to keep
singComp = input('Enter no. of singular values to be kept (ideally 40+) : ');

%coverting 3D image to 2D grayscale image with double
dummy_img = imread(img_name);
dummy_img = rgb2gray(dummy_img);
img = double(dummy_img);

%SVD of the 2D grayscale image
[U, S, V] = svd(img);

%Scree plot of SIngular Values of the image
figure(1), clf
plot(diag(S),'ks-','linew',1,'markersize',6,'markerfacecolor','w')
grid on
xlabel('Component number'), ylabel('\sigma')
title('"Scree plot" of singular values')


%showing first five layers (consisting of singular componenets) separately & squeezing them
clim = [-.5 .5]*max(abs(img(:)));
rank1mats = zeros(5,length(img(:,1)), length(img(1,:)));

figure(2), clf 
for i=1:5
    
    % create rank1 matrix
    rank1mats(i,:,:) = U(:,i)*S(i,i)*V(:,i)';
    
    subplot(2,5,i)
    imagesc(squeeze(rank1mats(i,:,:)))
    axis square, axis off
    set(gca,'clim',clim)
    title([ 'Component ' num2str(i) ])
    
    subplot(2,5,i+5)
    imagesc(squeeze(sum(rank1mats(1:i,:,:),1)))
    axis square, axis off
    set(gca,'clim',clim)
    title([ 'Components 1:' num2str(i) ])
end




% reduced sigular matrices of the image
Ur = U(:,1:singComp);
Sr = S(1:singComp,1:singComp);
Vr = V(:,1:singComp);

%constructing the reduced singular valued image
img_comp = Ur*Sr*Vr';


disp(['rank of compressed image array : '  num2str(rank(img_comp)) ])


% error map and percent difference from original matrix
errormap = (img_comp-img).^2;
pctdiff  = 100*norm(img_comp-img)/norm(img);

% show the results!
figure(3), clf
subplot(131), imagesc(img)
axis square, axis off
set(gca,'clim',clim)
title('Original image')

subplot(132), imagesc(img_comp)
axis square, axis off
set(gca,'clim',clim)
title('Reduced size image')

subplot(133), imagesc(errormap)
axis square, axis off
set(gca,'clim',clim)
title('error map')


% put SVD results into structure (ease of size comparison)
mapRecn.U = Ur;
mapRecn.S = Sr;
mapRecn.V = Vr;

% get variable information
reconsize = whos('mapRecn');
origsize  = whos('img');

% display compression
disp([ num2str(100-100*reconsize.bytes/origsize.bytes) '% compression and ' ...
       num2str(pctdiff) '% error for r=' num2str(singComp) ' low-rank approximation.' ])


%save the compressed image in directory
imwrite(uint8(img_comp), 'kremlin_r.jpg')