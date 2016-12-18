function [B_dataset,B_test,map] = DPSH(codelens)
    %% prepare the dataset
    data_prepare;
    %% load the pre-trained CNN
    net = load('imagenet-vgg-f.mat') ;
    %% load the Dataset
    load('cifar-10.mat') ;
    %% initialization
    maxIter = 150;
    lambda = 10;
    lr = logspace(-2,-6,maxIter) ;
    net = net_structure (net, codelens);
    U = zeros(size(train_data,4),codelens);
    B = zeros(size(train_data,4),codelens);
    %% training
    for iter = 1: maxIter
        [net,U,B] = train(train_data,train_L,U,B,net,iter,lr(iter),lambda) ;
    end
    %% testing
    [map,B_dataset,B_test] = test(net, dataset_L, test_L,data_set, test_data );
    save(['DPSH_CIFAR_10_' num2str(codelens) 'bits.mat'],'B_dataset','B_test','map');
end