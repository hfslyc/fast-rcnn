#!/bin/bash

for (( i = 24000; i <= 24000; i=i+2000 )) 
do
   ./tools/test_net.py --def models/VGG16_ped/test.prototxt --net output/Caltech_train04_800_finetune/train04_finetune/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_train04
done

