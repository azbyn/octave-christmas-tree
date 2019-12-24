function cone(col, theta, height, zp, midSpace, rad, prec, prec2)
  [t, s] = meshgrid(linspace(0, pi*2, prec), linspace(0, height, prec2));
  % x = cos(theta) .* s.*cos(t) - sin(theta) .* (height-s);
  % y = sin(theta) .* s.*cos(t) + cos(theta) .* (height-s);

  phi = -pi/15;
  x = s.*cos(t).*rad;
  y = (height-s)+midSpace;
  z = s .* sin(t).*rad;

  x2 = x;
  y2 = cos(phi) .* y - sin(phi) .*z;
  z2 = sin(phi).* y + cos(phi).*z+zp;

  %mesh(cos(theta) .* x - sin(theta) .*y, sin(theta).* x + cos(theta).*y, z);
  surf(cos(theta) .* x2 - sin(theta) .*y2, sin(theta).* x2 + cos(theta).*y2,z2, "EdgeColor", "k",'FaceColor', col);
end
