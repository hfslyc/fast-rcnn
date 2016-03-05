#!/bin/bash

for (( i = 5000; i <= 100000; i=i+5000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_noNms/train04_noNms/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test
done

