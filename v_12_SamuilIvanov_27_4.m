%fourth task

seed = 27 + 30;
rng(seed);
data = randi(30, 30);

disp(data);

b1 = data(1:30, 8);
b2 = data(7, 5:10);

%b3 = data(1:30, 10);
disp(data);
disp(b1);
disp(b2);