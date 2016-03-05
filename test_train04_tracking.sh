#!/bin/bash

for (( i = 2000; i <= 30000; i=i+2000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_tracking/train04_tracking/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test
done

