import _init_paths
import numpy as np
import caffe

caffe.set_mode_cpu()
net = caffe.Net('/home/eeb433/Documents/Eddy/fast-rcnn/models/VGG16_ped_fusion/train.prototxt', caffe.TRAIN)
net.copy_from('/home/eeb433/Documents/Eddy/fast-rcnn/output/Caltech_train04_800_finetune/train04_finetune/vgg16_fast_rcnn_iter_24000.caffemodel')

net2 = caffe.Net('/home/eeb433/Documents/Eddy/fast-rcnn/models/VGG16_ped/train.prototxt', caffe.TRAIN)
net2.copy_from('/home/eeb433/Documents/Eddy/fast-rcnn/output/Caltech_train04_800/train04/vgg16_fast_rcnn_iter_100000.caffemodel')

org_params = ['conv3_1', 'conv3_2', 'conv3_3', 'conv4_1', 'conv4_2', 'conv4_3', 'conv5_1', 'conv5_2', 'conv5_3', 'fc6', 'fc7', 'cls_score', 'bbox_pred']
for param in org_params:
    net.params[param+'_b'][0].data[...] = net2.params[param][0].data
    net.params[param+'_b'][1].data[...] = net2.params[param][1].data

net.save('/home/eeb433/Documents/Eddy/fast-rcnn/models/VGG16_ped_fusion/org_fintune.caffemodel')

