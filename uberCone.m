function uberCone()
  n = 12;
  height=10;
  angle=11/180*pi;
  draw = @(z, o,p) ring(n, (height-z)*tan(angle), z, o, p(1), p(2));
  % levels = length(z);
  % outer = linspace(top, height * tan(angle), levels);
  % inner = linspace(top, height * tan(innerAngle), levels);
  
  % miniHeights = outer-inner;
  % for i = 1:(levels)
  %   %printf("I %d:mh-  %f, o= %f \n", i, miniHeights(i), outer(i));
  %   ring(n, miniHeights(i),  z(i), 0);# mod(i, 2)* pi/n);
  % end

  %ring(n, miniHeights(), 0, 0);

  of = pi/(n*3)*2;
  q= [12, 2];
  draw(0.1, 0, q);
  draw(1.3, of, q);
  draw(2.4, 0, q);
  draw(3.3, of, q);
  draw(4.2, 0, q);
  draw(4.9, of, q);
  draw(5.6, 0, q);
  q= [8, 2];
  draw(6.2, of, q);
  draw(6.7, 0, q);
  draw(7.1, of,q);
  draw(7.5, 0, q);
  draw(7.9, of,q);
  q= [4, 2];
  draw(8.2, 0,q);
  draw(8.5, of,q);
  draw(8.8, 0,q);
  draw(9.1, of,q);
  draw(9.3, 0,q);

  [t, s] = meshgrid(linspace(0, pi*2, 8), [0, 3]);
  rad = tan(10/180*pi);
  x = s.*cos(t).*rad;
  y = s .* sin(t).*rad;
  z = (height-s);
  surf(x, y,z, "EdgeColor", "k", 'FaceColor', [0,0.5,0]);

  [t, s] = meshgrid(linspace(0, pi*2, 10), [-2,0]);
  surf(sin(t), cos(t), s, 'FaceColor', [.4, .25, .12])

  plot3(0, 0, height, 'p','MarkerSize', 50, 'MarkerFaceColor', 'auto', 'Color', [1, .8,0]);

  a = pi/height;
  b = 5;
  x = @(off, t) cos(b.*t+off).*t.*a;
  y = @(off, t) sin(b.*t+off).*t.*a;
  z = @(off, t) height-t;
  t = linspace(0, height, 1000)+.75;

  o =0;
  plot3(x(o, t),y(o,t), z(o, t),'.-', 'Color',[1,0,.1] , 'LineWidth', 8);
  t = linspace(0.1, height, 10)+.75;
  o = pi/4;
  plot3(x(o, t),y(o,t), z(o, t),'o', 'MarkerFaceColor', 'auto', 'MarkerSize', 20, 'color', [0.1,.1,.45], 'LineWidth',2);
  t = t(2:length(t));
  o = pi*1.5;
  plot3(x(o, t),y(o,t), z(o, t),'o', 'MarkerFaceColor', 'auto', 'MarkerSize', 20, 'color', [0.1,.1,.45], 'LineWidth',2);
  o = pi*.75;
  plot3(x(o, t),y(o,t), z(o, t),'d', 'MarkerFaceColor', 'auto', 'MarkerSize', 20, 'color', [0.75,.75,.75], 'LineWidth',2);

  o = pi*1.8;
  plot3(x(o, t),y(o,t), z(o, t),'d', 'MarkerFaceColor', 'auto', 'MarkerSize', 20, 'color', [0.75,.75,.75], 'LineWidth',2);
end
