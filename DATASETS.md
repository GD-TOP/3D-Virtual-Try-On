### SEARCH DATASETS  

#### Multi-View Clothes Datasets  
##### 수집 요구 사항  
- Multi-View 에서 촬영된 의류, 혹은 신발에 대한 데이터셋  
- 이미지로 구성되어 있어야 함
- 필요 데이터셋 주요 특징 : 다시점 이미지 및 3D 정보 포함 여부

##### 수집된 데이터셋  
1. VITON-HD
   - 데이터셋 샘플  
     <img width="47" alt="image" src="https://github.com/user-attachments/assets/32aca383-b60a-410d-89a1-73d59ede409d" />
   - 데이터셋 설명
     - 많은 Virtual Try ON 프로젝트에서 사용하고 있는 데이터셋
     - VITON과 PromptDressor 논문에서 활용됨
     - 기존의 의류 데이터셋과 달리 높은 resolution의 이미지로 구성됨
   - 데이터셋 구성
     - Image resolution: 1024x768
     - Preprocessed dataset: [Dropbox](https://www.dropbox.com/s/10bfat0kg4si1bu/zalando-hd-resized.zip?dl=0)
     - Train Set: 11,647 pairs
     - Test Set: 2,032 pairs
     - 현재는 드랍박스 파일이 삭제된 것으로 확인됨
   - 출처
     - Github: [https://github.com/shadow2496/VITON-HD](https://github.com/shadow2496/VITON-HD)
     - Paper: [https://arxiv.org/pdf/2103.16874](https://arxiv.org/pdf/2103.16874)
  
2. MV-VTON(MVD)
   - 데이터셋 샘플  
     <img width="480" alt="image" src="https://github.com/user-attachments/assets/762e2ade-9053-4e34-a918-715e7da1b23b" />
   - 데이터셋 설명
     - Multi View Virtual Try ON에서 사용된 데이터셋
     - 데이터셋 신청서를 작성하여 메일을 통해 컨택해야 함
   - 데이터셋 구성  
     - 데이터셋 폴더 구성
       <img width="391" alt="스크린샷 2025-03-23 16 18 48" src="https://github.com/user-attachments/assets/c7355fba-0ef0-432c-8a36-27af3bfb40ae" />
     - 하나의 옷에 대한 앞면 이미지, 뒷면 이미지를 하나의 pair로 제공함
   - 출처
     - Github: [https://github.com/hywang2002/MV-VTON](https://github.com/hywang2002/MV-VTON)
     - Paper: [https://arxiv.org/pdf/2404.17364](https://arxiv.org/pdf/2404.17364)
    
3. Dresscode  
   - 데이터셋 샘플  
     <img width="311" alt="image" src="https://github.com/user-attachments/assets/3cdee2df-e463-4863-bf5e-e245d0d86d8b" />
   - 데이터셋 설명
     - 옷과 해당 옷을 입고 있는 사람의 포즈, 세그멘테이션 등 추가적인 정보를 함께 제공하는 데이터셋
   - 데이터셋 구성
     - Image resolution: 1024x768
     - 107,584 images
     - Additional Informations
       - Keypoints
       - Skeletons
       - Human label maps
       - Human dense poses
      - Categories
        - upper body
        - lower body
        - dresses
    - 출처
      - Github: [https://github.com/aimagelab/dress-code](https://github.com/aimagelab/dress-code)
      - Paper: [https://arxiv.org/pdf/2204.08532](https://arxiv.org/pdf/2204.08532)
4. Deep Fashion3D v2
   - colored point cloud model 사용 가능
   - 실제 의류의 3D scan 및 다시점 이미지 포함
   - Data Organization (Garment mesh)
   deepFashion3DV2/filtered_registered_mesh
   |-- 1-1
   |   |-- 1-1_tex.png  
   |   |-- model_cleaned.obj 
   |   |-- model_cleaned.obj.mtl
   |
   |-- 2-2
         |-- 2-2_tex.png  
         |-- model_cleaned.obj
         |-- model_cleaned.obj.mtl
   - 파일 압축 해제를 위한 비밀번호 form 작성 필요
   - github [https://github.com/GAP-LAB-CUHK-SZ/deepFashion3D?tab=readme-ov-file](https://github.com/GAP-LAB-CUHK-SZ/deepFashion3D?tab=readme-ov-file)
   - release note [https://kv2000.github.io/2023/06/20/deepFashion3DV2/](https://kv2000.github.io/2023/06/20/deepFashion3DV2/)\

6. Stanford Online products dataset
   - 다시점에서 촬영된 상품 이미지 (특히, 신발)
   - 신발 종류 (Nike, Adidas 등) 다양하게 포함
   - dataset homepage [https://cvgl.stanford.edu/projects/lifted_struct/](https://cvgl.stanford.edu/projects/lifted_struct/)
   - dataset down link [https://drive.google.com/drive/folders/1tahHkWJsRyXlfOiH9OZEAeI4aYzqpzA5](https://drive.google.com/drive/folders/1tahHkWJsRyXlfOiH9OZEAeI4aYzqpzA5)

8. MVImgNet
   - 다양한 3D object 이미지 데이터 중 category 156번 shoe
   - folder structure
     |-- ROOT
         |-- class_label
            |-- instance_id
               |-- images
               |-- sparse/0
                  |-- cameras.bin   # COLMAP reconstructed cameras
                  |-- images.bin    # binary data of input images
                  |-- points3D.bin  # COLMAP reconstructed sparse point cloud (not dense)
   - github [https://github.com/GAP-LAB-CUHK-SZ/MVImgNet?tab=readme-ov-file](https://github.com/GAP-LAB-CUHK-SZ/MVImgNet?tab=readme-ov-file)
   - dataset download [https://github.com/GAP-LAB-CUHK-SZ/MVImgNet/blob/main/download_tool.py](https://github.com/GAP-LAB-CUHK-SZ/MVImgNet/blob/main/download_tool.py)
