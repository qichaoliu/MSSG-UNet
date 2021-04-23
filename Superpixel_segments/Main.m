clear; close all;

FLAG=1; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

switch(FLAG)
    case 1
        hsi=load('..\HyperImage_data\Indian_pines_corrected.mat');hsi=hsi.indian_pines_corrected;
        n_superpixels=[2048,1024,512,256];
    case 2
        hsi=load('..\HyperImage_data\PaviaU.mat');hsi=hsi.paviaU;
        n_superpixels=[2048,1024,512,256];
    case 3
        hsi=load('..\HyperImage_data\Salinas_corrected.mat');hsi=hsi.salinas_corrected;
        n_superpixels=[2048,1024,512,256];
    case 4
        hsi=load('..\HyperImage_data\KSC.mat');hsi=hsi.KSC;
        n_superpixels=[2048,1024,512,256];
end

[h,w,c]=size(hsi);
pcaMap=reshape(hsi,[h*w,c]);

pcaMap=pca(pcaMap');
pcaMap=pcaMap(:,1:3);
pcaMap=pcaMap';
pcaMap=(mapminmax( pcaMap)+1)/2*255;
pcaMap=uint8(pcaMap)';
pcaMap=reshape(pcaMap,[h,w,3]);
I=pcaMap;

E=uint8(zeros([h,w]));

% fine detail structure
tic; sh=SuperpixelHierarchyMex(I,E,0.0); toc

segmentmaps=zeros(size(n_superpixels,2),h,w);
for i=1:size(n_superpixels,2)
    GetSuperpixels(sh,n_superpixels(:,i));
    segmentmaps(i,:,:)=sh.label;
end

switch(FLAG)
    case 1
        save segmentmapsindian.mat segmentmaps
    case 2
        save segmentmapspaviau.mat segmentmaps
    case 3
        save segmentmapssalinas.mat segmentmaps
    case 4
        save segmentmapsksc.mat segmentmaps
end

% get whatever you want
GetSuperpixels(sh,2048); color1 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,1024); color2 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,512); color3= MeanColor(double(I),sh.label);
GetSuperpixels(sh,256); color4= MeanColor(double(I),sh.label);
figure,imshow([color1,color2; color3,color4]);
