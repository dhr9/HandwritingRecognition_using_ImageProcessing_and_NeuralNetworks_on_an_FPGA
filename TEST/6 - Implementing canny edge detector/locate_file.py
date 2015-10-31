import os
def locate_file() : 
    working_directory = ''
    path_name = os.path.dirname(__file__)
    print(path_name)
    for element in path_name.split('/')[:-1] : 
        working_directory += element + '/'
    working_directory ="C:\Users\dhrre\Desktop\Projects\Handwriting_recognition_using_neural_nets_on_FPGA\\TEST\\6 - Implementing canny edge detector"
    return working_directory

print(locate_file)