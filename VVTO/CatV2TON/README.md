## Current Settings

CUDA = 11.8  
Ubuntu = 20.04  
Python = 3.10  
  
## Requirements
opencv-python  
torch  
torchvision  
huggingface_hub  
diffusers  
transformers  
fvcore  
av  
cloudpickle  
omegaconf  
pycocotools  
scipy  
accelerate  
einops  

## Inference code

### Inference for Video Try-On

```bash
CUDA_VISIBLE_DEVICES=0 python eval_video_try_on.py \
--dataset vivid \
--data_root_path DATASET_PATH \
--output_dir OUTPUT_DIR_TO_SAVE_RESULTS \
--dataloader_num_workers 0 \
--batch_size 1 \
--seed 42 \
--mixed_precision bf16 \
--allow_tf32 \
--repaint \
--eval_pair  
```
