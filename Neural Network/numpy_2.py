import trained_network
import numpy as np

def convert_to_5_11(element):
	element *= 2**11
	element = int(element)
	element *= 1.0/2**11
	return element

def convert_full_list(list_):
	list1 = []
	try:
		iter(list_)
	except:
		return_val = convert_to_5_11(list_)
	else:
		for element in list_:
			list1.append(convert_full_list(element))
		return_val = list1
	return return_val

tn = trained_network.Trained_Network()

wt = tn.weights
b = tn.biases

b_5_11 = convert_full_list([[1,2],[3,4]])
print(b_5_11)


def evaluate(network, test_data):
	global tn
	def feedforward(network, a):
		biases_ = network.biases
		weights_ = network.weights
		for b, w in zip(biases_, weights_):
			a = sigmoid(np.dot(w, a)+b)
		return a
	test_results = [(np.argmax(feedforward(network,x)), y) for (x, y) in test_data]
	return sum(int(x == y) for (x, y) in test_results)

def sigmoid(z):
    return 1.0/(1.0+np.exp(-z))

sigmoid_vec = np.vectorize(sigmoid)

# def sigmoid(z):
#     return 1.0/(1.0+np.exp(-z))

# sigmoid_vec = np.vectorize(sigmoid)
# list_ = []
# list1 = []
# for j in range(-10000,10001,1):
# 	i = j*1.0/1000
# 	list1.append(i)
# 	list_.append(sigmoid(i)*2**16)
# 	# print(str(i)+"      \t == \t"+str(sigmoid(i)*2**16))

# last_value = 0
# range_start = -10.0
# diff_list = []
# diff_list1 = []
# for i in range(len(list_)):
# 	list_[i] = int(list_[i])
# 	# print(str(list1[i])+"\t"+str(list_[i]))
# 	range_stop = list1[i]
# 	if(list_[i] != last_value):
# 		diff = range_stop - range_start
# 		diff_list.append(diff)
# 		diff_list1.append(last_value)
# 		# print(str(last_value)+"    \t\t"+str(diff))
# 		last_value = list_[i]
# 		range_start = list1[i]

# tnls = trained_network.list_storer()

# diff_list1 = tnls.diff_list1
# diff_list  = tnls.diff_list

# print(len(diff_list))

# print(min(diff_list))
# print(max(diff_list))
# print("---------")
# for i in range(20):
# 	d = diff_list.index(max(diff_list))
# 	print(str(diff_list1[d]*2**-16)+"\t\t\t"+str(diff_list[d]))
# 	diff_list.pop(d)
# 	diff_list1.pop(d)


# print(diff_list1)
# print(diff_list)

# import trained_network as tn

# wt = tn.wts
# b = tn.bias

# def do(array):
# 	print "length = ",
# 	print(len(array))
# 	print "max = ",
# 	print(max(array))
# 	print "min = ",
# 	print(min(array))
# 	prev_value = len(array)
# 	for j in range(-10,11):
# 		i = j*1.0/10
# 		x = 0
# 		for b in array:
# 			if(b>i):
# 				x+=1
# 		diff = prev_value - x
# 		prev_value = x
# 		print(str(i-0.1)+"  \tto\t"+str(i)+"  \t==>\t"+str(diff))

# print("Weights:-")
# do(wt)
# print("----------\nBiases:-")
# do(b)


# import os

# os.chdir(os.getcwd())

# def get_all_information(numpy_array,name):
# 	list_ = []
# 	print(numpy_array)
# 	# for element in numpy_array:
# 	# 	for element_ in element:
# 	# 		list_.append(element_[0])
# 	def get_all_elements(list_,object_):
# 		try:
# 			iter(object_)
# 		except:
# 			return object_
# 		else:
# 			for element in object_:
# 				g = get_all_elements(list_,element)
# 				if(g != None): list_.append(g)

# 	get_all_elements(list_,numpy_array)

# 	with open("trained_network.txt",'a') as t:
# 		t.write(name)
# 		t.write(":-\n")
# 		t.write(str(list_))
# 		t.write("\n\n")
# 	print("----------------------------------\n")