#Created by Sheng Wang (E-mail  wangs@lamda.nju.edu.cn) from Nanjing University @ 2016-5
#This is a demo on the CIFAR-10 dataset with the DPSH implementaion based on the MatConvNet(http://www.vlfeat.org/matconvnet/) framework.
#Corresbonding Author: Wu-Jun Li (E-mail: liwujun@nju.edu.cn, Website: http://cs.nju.edu.cn/lwj/) 

In the following is an example of using DPSH on CIFAR-10.

Stage 1:
1. Download the CIFAR-10 dataset from the website(https://www.cs.toronto.edu/~kriz/cifar-10-matlab.tar.gz), unzip the file 
   and put the folder 'cifar-10-batches-mat/' in the  folder 'DPSH_Code_IJCAI/'.
2. Download the Pretrained CNN model VGG-F from the website(http://www.vlfeat.org/matconvnet/models/imagenet-vgg-f.mat), and put it in the folder 'DPSH_Code_IJCAI/'.


Stage 2:
1.Installing and compiling the library in the MatConvNet, Please refer to http://www.vlfeat.org/matconvnet/install/ for more information about installing MatConvNet.
2.demo run command '[B_dataset, B_test, map] = DPSH(32)'. Here '32' is refered to the hash-code length.
