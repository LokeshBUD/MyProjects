while 1
    brick.SetColorMode(4, 4);
    color_rgb = brick.ColorRGB(4);
    red = (color_rgb(1) > color_rgb(2) | color_rgb(1) > color_rgb(3));
    green = ((color_rgb(1) > 21) && (color_rgb(2) > 105) && (color_rgb(3) > 50));
    blue = ((color_rgb(1) > 21) && (color_rgb(2) > 95) && (color_rgb(3) > 100));
    pause(0.1);
    disp("suck my nuts");
    disp(color_rgb);
    if (red)
        brick.StopMotor('AB');
        pause(4);
        brick.MoveMotor('AB', 30);
        continue;
    elseif (blue)
        brick.MoveMotor('C', -50);
        brick.StopMotor('ABC');
        continue;
    elseif (green)
        brick.MoveMotor('AB', 20);
        pause(2);
        brick.StopMotor('AB');
        brick.MoveMotor('C', 40);
        %continue;
    end
   
end
