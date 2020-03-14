Used for resizing images. It assigns to each location the intensity of its nearest neighbor in original image. Refer [Gonzalez DIP Book](https://www.pearson.com/us/higher-education/program/Gonzalez-Digital-Image-Processing-4th-Edition/PGM241219.html) chapter 1.

Basic algorithm is as follows:

*For every pixel in resized image, we find the coordinate mapping in original image and copy over the pixel intensity from         there to pixel in output image.*

