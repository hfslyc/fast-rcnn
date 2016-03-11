function [gt,dt,miss] = MCL_eval(dt_file)

dataDir = '~/Documents/wayne/datasets/Caltech/';
imgDIr = [dataDir 'test/images'];
gtDir = [dataDir 'test/annotations'];
imgNms=bbGt('getFiles',{[dataDir 'test/images']});

pLoad = {'lbls',{'person'},'ilbls',{'people'},'squarify',{3,.41}};
pLoad = [pLoad, 'hRng',[50 inf],'vRng',[.65 1],'xRng',[5 635],'yRng',[5 475]];

ref = 10.^(-2:.25:0);
lims = [3.1e-3 1e1 .05 1];

[gt,dt] = bbGt('loadAll',gtDir,dt_file,pLoad);
[gt,dt] = bbGt('evalRes',gt,dt,0.5,0);
[fp,tp,score,miss] = bbGt('compRoc',gt,dt,1,ref);
miss=exp(mean(log(max(1e-10,1-miss))));
fprintf('missrate: %f\n', miss);


