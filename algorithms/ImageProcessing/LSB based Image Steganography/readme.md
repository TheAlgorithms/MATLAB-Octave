Image Steganography means hiding data in an image. 

This is possible because images are constituted of pixels. Each pixel can be represented as bits. The lower bits don't hold a lot of detail so they can be used to hide our data (by replacing them with corresponding bits of data). 

Since most of the information is contained in MSBs (due to their higher weights; bits are multiplied by 2^n for the nth bit and added during binary to decimal conversion), the resulting image is very similar to the human eye if we modify the LSBs only (Least Significant Bits).

The encoding is done using the following steps:

    1. Convert the image to greyscale
    2. Resize the image if needed
    3. Convert the message to its binary format
    4. Initialize output image same as input image
    5. Traverse through each pixel of the image and do the following:
       - Convert the pixel value to binary
       - Get the next bit of the message to be embedded
       - Create a variable temp
        If the message bit and the LSB of the pixel are same, set temp = 0
        If the message bit and the LSB of the pixel are different, set temp = 1
        This setting of temp can be done by taking XOR of message bit and the LSB of the pixel
        Update the pixel of output image to input image pixel value + temp
        
    Keep updating the output image till all the bits in the message are embedded
    Finally, write the input as well as the output image to local system.

The decoding/decryption is done using the following steps:

    1. Get the output image which was encoded earlier.
    2. Input the length of the encoded message (character count).
    3. Retrieve the LSBs of each pixel
    4. Form a bit sequence from these LSBs
    5. Arrange the bit sequence into a matrix of 8 rows and total_message_bits/8 columns 
        (each column will represent a character of 8 bits, hence 8 rows)
       - Convert the binary value to decimal
       - Get the corresponding char from ascii
  
        
    Finally, display the original message.
    
References:
[Concept, TDS article](https://towardsdatascience.com/steganography-hiding-an-image-inside-another-77ca66b2acb1), 
[GFG article on LSB based Image Steganography](https://www.geeksforgeeks.org/lsb-based-image-steganography-using-matlab/), 
[GFG article on text extraction from image](https://www.geeksforgeeks.org/text-extraction-from-image-using-lsb-based-steganography/)
