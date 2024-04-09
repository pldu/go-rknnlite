#!/bin/bash

# download mobilenet_v1 data files
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/cat_224x224.jpg
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/dog_224x224.jpg
wget -O mobilenet_v1-rk3588.rknn https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/RK3588/mobilenet_v1.rknn

# get imagenet sample files
git clone https://github.com/EliSchwartz/imagenet-sample-images.git
mkdir imagenet
mv imagenet-sample-images/*.JPEG imagenet/
rm -rf imagenet-sample-images