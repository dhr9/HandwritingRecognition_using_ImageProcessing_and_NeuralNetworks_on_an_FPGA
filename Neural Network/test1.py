import mnist_loader
training_data, validation_data, test_data = mnist_loader.load_data_wrapper()

import network

# creating a network (loading a class)
net = network.Network([784, 30, 10])

# start training with 30 epochs, mini_batch_size = 10 , eta = 3
no_of_epochs = 20
mini_batch_size = 20
eta = 50

eta = float(eta)

print("mini_batch_size = "+str(mini_batch_size)+"\neta = "+str(eta))

net.SGD(training_data,no_of_epochs,mini_batch_size,eta,test_data = test_data)

def test(lin_im, row_length = 28):
    temp = [row[0] for row in lin_im]
    # display([temp[k:k+row_length] for k in range(0,len(temp),row_length)])
    print("the network identifies it as " + str(net.net_output(lin_im)))

# test(test_data[0][0])