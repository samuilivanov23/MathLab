%fifth task

x = 1:0.001:-1;
noise = rand(1, 3000);

final_resultX = myfunctionX(x);
final_resultG = myfunctionG(x, noise);

plot(x, final_resultX);

hold on

plot(x, final_resultG);

hold off

function [resultX] = myfunctionX(x)
    if (x >= -1) && (x <= 0)
        resultX = sin(1/(1-(x.^6)));
    elseif (x >= 0) && (x <= 1)
        resultX = 4*cos(x.^2);
    end
end
 
function [resultG] = myfunctionG(x, noise)
    resultG = myfunction(x) + noise;
end