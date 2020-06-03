function plotdata(x, Y)

figure;

hold on;

Pos = find(Y == 1);

Neg = find(Y == 0);

plot(x(Pos, 1), x(Pos, 2), 'k+','LineWidth', 2, ...
    'MarkerSize', 7);

plot(x(Neg, 1), x(Neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
    'MarkerSize', 7);

hold off;

end