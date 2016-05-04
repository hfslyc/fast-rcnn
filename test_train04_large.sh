#!/bin/bash

for (( i = 8000; i <= 60000; i=i+4000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_large/train04_large/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test > log_large_$i.txt
done

