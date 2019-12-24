f = figure(1);
hold on
axis equal
axis off
view(12.5, 15);

title("Crăciun Fericit!", "FontSize", 20);

n = 12;
height=10;
width = .195;

of = pi/(n*3)*2;
zv = [0.1 1.3 2.4 3.3 4.2 4.9 5.6, 6.2 6.7 7.1 7.5 7.9, 8.2 8.5 8.8 9.1 9.3 ];
qv = [repmat(12, 1, 7), repmat(8, 1,5), repmat(4,1,5)];

phi = -pi/15;
rad = .5;
for i = 1:length(zv)
  h = (height-zv(i))*width;
  z = zv(i);
  offset = mod(i, 2)*pi/(n*3)*2;
  q = qv(i);
  theta = linspace(offset, 2*pi+offset, n+1);
  [t, s] = meshgrid(linspace(0, pi*2, q), linspace(0, h, 2));
  for i = 1:n
    th = theta(i);

    x1 = s.*cos(t).*rad;
    y1 = 2.*h-s;
    z1 = s .* sin(t).*rad;

    x2 = x1;
    y2 = cos(phi) .* y1 - sin(phi) .*z1;
    z2 = sin(phi).* y1 + cos(phi).*z1+z;

    surf(cos(th) .* x2 - sin(th) .*y2, sin(th).* x2 + cos(th).*y2,z2, "EdgeColor", "k",'FaceColor', [0,.5,0]);

  end
end

[t, s] = meshgrid(linspace(0, pi*2, 8), [0, 3]);
rad = tan(10/180*pi);
x = s.*cos(t).*rad;
y = s .* sin(t).*rad;
z = (height-s);
surf(x, y,z, "EdgeColor", "k", 'FaceColor', [0,0.5,0]);

[t, s] = meshgrid(linspace(0, pi*2, 10), [-2,0]);
surf(sin(t), cos(t), s, 'FaceColor', [.4, .25, .12])

plot3(0, 0, height, 'p','MarkerSize', 50, 'MarkerFaceColor', 'auto', 'Color', [1 .8 0]);

a = pi/height;
b = 5;
x = @(off, t) cos(b.*t+off).*t.*a;
y = @(off, t) sin(b.*t+off).*t.*a;
z = @(off, t) height-t;
t = linspace(0, height, 1000)+.75;

o =0;
plot3(x(o, t),y(o,t), z(o, t),'.-', 'Color',[1,0,.1] , 'LineWidth', 8);
t = linspace(0.1, height, 10)+.75;
d = @(o, m, c) plot3(x(o, t),y(o,t), z(o, t),m, 'MarkerFaceColor', 'auto', 'MarkerSize', 20, 'Color', c);
d(pi/4, 'o', [.1 .1 .45]);
t = t(2:length(t));
d(pi*1.5, 'o', [.1 .1 .45]);
d(pi*.75, 'd', [.75 .75 .75]);
d(pi*1.8, 'd', [.75 .75 .75]);

hold off
