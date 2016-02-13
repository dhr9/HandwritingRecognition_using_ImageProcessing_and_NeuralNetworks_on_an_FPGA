import mnist_loader
training_data, validation_data, test_data = mnist_loader.load_data_wrapper()

import network


def train(no_of_hidden_neurons,mini_batch_size,eta):
	# creating a network (loading a class)
	net = network.Network([784, no_of_hidden_neurons, 10])

	# start training with 30 epochs, mini_batch_size = 10 , eta = 3
	no_of_epochs = 20
	# mini_batch_size = 20
	# eta = 50

	eta = float(eta)

	print("no_of_hidden_neurons = "+str(no_of_hidden_neurons)+"\nmini_batch_size = "+str(mini_batch_size)+"\neta = "+str(eta))

	print(net.SGD(training_data,no_of_epochs,mini_batch_size,eta,test_data = test_data))

for a in [100]:
	for b in [1,5,10,20]:
		for c in [1,5,10,25,50]:
			train(a,b,c)
			print("\n-----------------\n")