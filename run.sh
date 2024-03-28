#!/bin/bash

source ~/.bashrc
source ~/miniconda3/etc/profile.d/conda.sh
conda activate detic
# cd /home/pear_group/rutwik/computer_vision/Detic/
cd /home/pear_group/rutwik/einstein-vision/Detic/

# FOR DIRECTORIES CONTAINING IMAGES! {CHANGE SEQUENCE NUMBER - (in Input and Output Dir)}
python demo.py --config-file configs/Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.yaml --input-dir ./../P3Data/Sequences/scene13/Undist/dataset_front_13/ --output-dir ./../output_detic/segmentation_images_seq13_only_traffic_lights --vocabulary custom --custom_vocabulary Car,SUV,Pickup_Truck,Person,Traffic_Light,Stop_Sign,Traffic_Cone --confidence-threshold 0.4 --opts MODEL.WEIGHTS models/Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.pth

# python create_binary_images.py
cd ..
conda deactivate
conda activate zoe
cd /home/pear_group/rutwik/einstein-vision/ZoeDepth/
python predictDepth.py
# python metric_depth_centroid.py
conda deactivate
