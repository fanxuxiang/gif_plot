clc;clear
a=[1 2 3 4 5 6 7 8 9 ];
b=[2 4 8 16 30 40 50 80 90];
mark=1;
for i=1:length(a)
    plot(a(i),b(i),'>'); axis([0, 20, 0, 100]); hold on
    pause(1)
    F = getframe(gcf);
    im = frame2im(F);
    [I,map] = rgb2ind(im,256);
    if mark == 1
        imwrite(I,map,'demo.gif','GIF', 'Loopcount',inf,'DelayTime',0.1);%delaytime为各帧的停留时间，越小GIF越快
        mark = mark + 1;
    else
        imwrite(I,map,'demo.gif','WriteMode','append','DelayTime',0.1);
    end
end
