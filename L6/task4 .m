triangle1 = [0, 0; 1, 0; 0.5, 0.5];
triangle2 = [0, 0; 0.5, 0.5; 0, 1];
triangle3 = [1, 0; 1, 1; 0.5, 0.5];
triangle4 = [0, 1; 0.5, 0.5; 1, 1];
triangle5 = [0, 0.5; 0.5, 0.5; 0.25, 0.75];
triangle6 = [0.5, 0.5; 0.75, 0.75; 0.25, 0.75];
triangle7 = [0.25, 0.75; 0.75, 0.75; 0.5, 1];

hold on;
fill(triangle1(:,1), triangle1(:,2), 'b');
fill(triangle2(:,1), triangle2(:,2), 'b');
fill(triangle3(:,1), triangle3(:,2), 'b');
fill(triangle4(:,1), triangle4(:,2), 'b');
fill(triangle5(:,1), triangle5(:,2), 'b');
fill(triangle6(:,1), triangle6(:,2), 'b');
fill(triangle7(:,1), triangle7(:,2), 'b');
axis equal;
axis off;
hold off;

