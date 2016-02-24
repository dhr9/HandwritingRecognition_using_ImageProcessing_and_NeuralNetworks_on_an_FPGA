import mnist_loader
training_data, validation_data, test_data = mnist_loader.load_data_wrapper()

import network

def train(no_of_hidden_neurons,mini_batch_size,eta):
	# creating a network (loading a class)
	net = network.Network([784, no_of_hidden_neurons, 10])
	
	# start training with 30 epochs, mini_batch_size = 10 , eta = 3
	no_of_epochs = 5
	# mini_batch_size = 20
	# eta = 50

	eta = float(eta)

	print("no_of_hidden_neurons = "+str(no_of_hidden_neurons)+"\nmini_batch_size = "+str(mini_batch_size)+"\neta = "+str(eta))

	print(net.SGD(training_data,no_of_epochs,mini_batch_size,eta,test_data = test_data))

	return net


trained_network = train(30,20,10)

save = network.numpy_2.get_all_information

save(trained_network.biases,"biases")
save(trained_network.weights,"weights")