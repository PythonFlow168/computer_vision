function shifted_bbox = ShiftBbox(input_bbox, new_center)

% The function ShiftBbox has two input arguments:
% ● input_bbox – the current bounding box in the format: input_bbox is a 1 x 4 vector 
% The. input_bbox(1:2) are the spatial coordinates of the left top corner of the 
% bounding box, input_bbox(3) is the horizontal size of the bounding box, 
% input_bbox(4) is the vertical size of the bounding box;
% ● new_center – the new position of the centre of the bounding box in spatial 
% coordinates
% The function ShiftBbox has one output:
% ● shifted_bbox – the updated bounding box in the same format as the input_bbox 
% argument. The centre of the updated bounding box is equal to the new_center input 
% parameter
% 
% int32(new_center) 
% input_bbox(3:4)
% int32(input_bbox(3:4) / 2)
bbox_corner = int32(new_center) - int32(input_bbox(3:4) / 2);

shifted_bbox = [bbox_corner, input_bbox(3:4)];

end