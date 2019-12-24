function ring(n, height, z, offset, prec, prec2)
  %printf('z: %f= %f\n', z, height);
  rad = .5;
  theta = linspace(offset, 2*pi+offset, n+1);
  for i = 1:n
    col = [0,.5,0]; %[0, (0.3 +(rand()*0.3)), 0];
    cone(col, theta(i), height, z, height, rad, prec, prec2);
  end
end
