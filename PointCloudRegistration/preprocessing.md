## colmap


### Create Database

``` shell
colmap database_creator --database_path 폴더명
```


### [Option] image_undistorter를 이용해서 3D-GS가 읽을 수 있는 카메라 모델로 변경

``` shell
colmap image_undistorter --image_path datasets/nerf_llff_data/fern/images --input_path datasets/nerf_llff_data/fern/sparse/0 --output_path datasets/nerf_llff_data/processed/fern --output_type COLMAP
```

### Convert PLY

``` shell
colmap model_converter --input_path path/to/model --output_path path/to/output --output_type PLY
```
