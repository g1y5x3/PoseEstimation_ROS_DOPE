tran = [-0.171, 0.046, 0.977];
quat = [0.385, 0.564, 0.612, -0.399];
tform_r = quat2tform(quat);
tform_r(1:3,4) = tran;

cam_H_chess = tform_r;
cam_P = [-0.119577682047; -0.0994027810179; 1.01791929323; 1];
chess_H_cam = cam_H_chess^-1;
chess_P =  chess_H_cam * cam_P;

tran = [-0.096, 0.046, 0.120];
quat = [0.564, 0.385, 0.399, 0.612];
tform_ROS = quat2tform(quat);
tform_ROS(1:3,4) = tran;



% tform_t = trvec2tform(tran);
% sl_H_c = tform_t * tform_r;
% 
% R1 = roty(90);
% Tz = [0, 0, -0.211];
% Ty = [0, -0.0254, 0];
% 
% % c_H_w = trvec2tform(Tz) * rotm2tform(R1) * rotm2tform(R1) 
% % 
% % quat = tform2quat(c_H_w)
% % tran = tform2trvec(c_H_w)
% w_H_c = trvec2tform(Ty) * trvec2tform(Tz) * rotm2tform(R1);
% w_H_c^-1
% 
% 
% % sl_H_w =  sl_H_c * w_H_c
% % 
% quat = tform2quat(w_H_c^-1)
% tran = tform2trvec(w_H_c^-1)
