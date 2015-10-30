def locate_file() : 
    working_directory = ''
    for element in __file__.split('/')[:-1] : 
        working_directory += element + '/'
    working_directory ="C:\Users\dhrre\Desktop\Projects\Handwriting_recognition_using_neural_nets_on_FPGA\\TEST\\6 - Implementing canny edge detector"
    return working_directory

print(__file__)