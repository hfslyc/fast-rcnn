#!/bin/bash

for (( i = 12000; i <= 60000; i=i+4000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped_BF3/test.prototxt --net output/Caltech_train04_BF3/train04/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test 2>&1 | tee log_BF3_$i.txt
done

