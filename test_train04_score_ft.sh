#!/bin/bash

for (( i = 8000; i <= 60000; i=i+4000 )) 
do
    ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_score_ft_sharp/train04_score_ft_sharp/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test > log_sharp__$i.txt
done

