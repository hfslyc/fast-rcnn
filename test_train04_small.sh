#!/bin/bash

for (( i = 8000; i <= 60000; i=i+4000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_small/train04_small/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test > log_small__$i.txt
done

