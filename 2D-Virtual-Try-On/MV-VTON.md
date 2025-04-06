## Prerequisites

## Setup

Python 3 dependencies:

* Tensorflow 1.15
* matplotlib
* numpy
* imageio
*  configargparse

### hugging face
Paint-by-Example link
https://huggingface.co/Fantasy-Studio/Paint-by-Example

## Inference

Shell Script
```
bash test.sh
```

Python Code
```
CUDA_VISIBLE_DEVICES=3 python test.py --gpu_id 0 \
--ddim_steps 50 \
--outdir results/try/ \
--config configs/viton512.yaml \
--dataroot /datasets/NVG \
--ckpt checkpoints/mvg.ckpt  \
--n_samples 1 \
--seed 23 \
--scale 1 \
--H 512 \
--W 384 
```
