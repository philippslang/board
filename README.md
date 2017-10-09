# PaddleBoard (temp name)

## Purpose

A training model in neural networks could be very complex and confusing, its like a black box to PaddlePaddle developers. PaddleBoard (temp name) could be the flashlight to see what is under the hood!

In order to help our users to understand, optimize and debug their PaddlePaddle program, we want to build a tool that can give insight into the computational graph architecture and performance in a form of graph / diagrams.


## Ideas / Proposals

### Key Features

- A diagram that visualizes entire model’s behavior including operators, variables and layers
- A graph that keep tracks of metrics over time 


### Improvement from Tensorboard / Long term proposals 

- Side by side code and graph relationship (pointing to a certain op that can highlight the corresponding code)
- Make the board a lightweight IDE that able to run the program with custom parameters and see dynamically changing in visual graphs
- Simply drag and drop to draw the visual diagram and auto generate the code for non programmers, providing a UI to upload all the training data


### TensorBoard’s technical architecture
