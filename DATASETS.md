### SEARCH DATASETS  

#### Multi-View Clothes Datasets  
##### 수집 요구 사항  
- Multi-View 에서 촬영된 의류, 혹은 신발에 대한 데이터셋  
- 이미지로 구성되어 있어야 함

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
