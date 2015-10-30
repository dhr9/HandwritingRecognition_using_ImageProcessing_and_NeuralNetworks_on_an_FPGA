print("entering setup.py")
import os
import locate_file
import sys
print("setup.py imports complete")

command = ''
shared_object_library_extension = ''

working_directory = locate_file.locate_file()

print(working_directory)

if sys.platform == 'darwin' : 
	print('platform : darwin')
	command = 'clang'
	shared_object_library_extension = 'so'
elif sys.platform == 'win32' :
	print('platform win32')
	command = 'gcc'
	shared_object_library_extension = 'dll'
else : 
	raise TypeError('unsupported operating system, only windows and mac osx supported')

print(command)
print(working_directory)
os.chdir(working_directory)
c_file_name = 'convolution.c'
object_file_name = 'convolution.o'
shared_object_library_name = 'convolution.{0}'.format(shared_object_library_extension)

#compiling convolution.c
if shared_object_library_name not in os.listdir(working_directory) :
	print('compiling ' + c_file_name)
	os.system('cd ' + working_directory)
	os.system('{0} -c '.format(command) + c_file_name)
	os.system('{0} -o {1} -shared {2}'.format(command,shared_object_library_name,object_file_name))
	os.system('file {0}'.format(shared_object_library_name))
