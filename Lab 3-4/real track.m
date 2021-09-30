clear all
v = VideoReader('red_square_video.mp4');
load ('red_square_gt.mat');

opticFlow = opticalFlowLK('NoiseThreshold',0.0039);

a_track = [];
i = 1;

frameRGB = readFrame(v);
frameGray = im2gray(frameRGB); 
flow = estimateFlow(opticFlow,frameGray);

b = corner(frameGray);
a_x = b(1,1);
a_y = b(1,2);

a_track(i,1) = a_x;
a_track(i,2) = a_y;
a_track(i+1,1) = a_x + flow.Vx(a_x,a_y);
a_track(i+1,2) = a_y + flow.Vy(a_x,a_y);
i = i + 1;


while hasFrame(v)
    frameRGB = readFrame(v);
    frameGray = im2gray(frameRGB); 
    flow = estimateFlow(opticFlow,frameGray);
    
    b = corner(frameGray);
    [r ~] = size(b);
    
  
    dis = inf;
    for k = 1:r
        c = (b(k,1)-a_track(i,1))^2 + (b(k,2)-a_track(i,2))^2;
        if c < dis
           dis = c;
           a_x = b(k,1);
           a_y = b(k,2);
        end
    end
    
    a_track(i+1,1) = a_x + flow.Vx(a_y,a_x);
    a_track(i+1,2) = a_y + flow.Vy(a_y,a_x);
   
    
    pause(10^-3);
    i = i + 1;
end

figure
plot(gt_track_spatial(:,1),gt_track_spatial(:,2),'b');
hold on
plot(a_track(1:150,1),a_track(1:150,2),'r');
legend('Original','Count');


i = i + 1;
mse_x=a_track(i+1,1)-a_track(i,1);
mse_y=a_track(i+1,2)-a_track(i,2);
mse_xy=sqrt(mse_x.^2+mse_y.^2);
t=mse(mse_xy);
disp(t)