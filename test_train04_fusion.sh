#!/bin/bash

for (( i = 2000; i <= 60000; i=i+2000 )) 
do
echo $i
   ./tools/test_net.py --def models/VGG16_ped_fusion/test.prototxt --net output/Caltech_finetune_fusion/train04/vgg16_fast_rcnn_iter_$i.caffemodel --imdb inria_test
done

