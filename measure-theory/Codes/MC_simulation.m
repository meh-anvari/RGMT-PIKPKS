%run chain for states
 chain
 w =[[.3 .2 .5]; [.1 .8 .1]; [.4 .4 .2]];

G = digraph(w);
h = plot(G,'EdgeLabel',G.Edges.Weight);
highlight(h,[1 2 3]);
highlight(h, x(1), 'NodeColor', 'r')
p = w;

for ii = 2:length(x)
G = digraph(p);
h = plot(G,'EdgeLabel',G.Edges.Weight);
highlight(h,[1 2 3]);
highlight(h, x(ii), 'NodeColor', 'r')
p = w^ii;
highlight(h,[x(ii-1) x(ii)],'NodeColor','r','EdgeColor','r')
drawnow
pause(0.5)
end