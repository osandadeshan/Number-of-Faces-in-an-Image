    % creates a System object, facedetector, that detects objects using the Viola-Jones algorithm.
    faceDetector = vision.CascadeObjectDetector;

    I = imread('\people2.png');
     bboxes = step(faceDetector, I);
         IFaces = insertObjectAnnotation(I, 'rectangle', bboxes, 'Face');
   
  % figure, imshow(IFaces), title('Detected faces');
  set(gcf,'NumberTitle','off') %don't show the figure number
  set(gcf,'Name','Counting the number of people in an image') %select the name you want

   subplot(1,2,1); imshow(I); title('Original Image');
   subplot(1,2,2); imshow(IFaces); title('Detected Faces');
   
  % Counting the number of objects
   text(15,15,strcat('\color{yellow}Number of people Found:',num2str(length(bboxes))))
   


      