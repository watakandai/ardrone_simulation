function d=mutate(offs, mutprop, bound, rng)%uniform mutation.
[pops,numvar]=size(offs);
mut=round(mutprop*pops*numvar)  % 何回for文回すか
for i=1:mut
    x=ceil(rand*pops)
    y=ceil(rand*numvar)
    offs(x,y)=bound(y,1)+rand*rng(y);
end
d=offs