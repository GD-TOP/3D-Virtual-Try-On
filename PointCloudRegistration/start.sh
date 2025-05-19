#!/bin/bash

# BASE_DIR is differ for everyone's environment, so plz initialize with YOUR MVImgNET
# BASE_DIR="/home/m4ml/Desktop/colmap/MVImgNet/one_shoe"

# 폴더 반복
for folder in $(ls "$BASE_DIR"); do
    FOLDER_PATH="$BASE_DIR/$folder"

    if [ -d "$FOLDER_PATH" ]; then
        IMAGES_PATH="$FOLDER_PATH/images"
        SPARSE_PATH="$FOLDER_PATH/sparse"
        DENSE_PATH="$FOLDER_PATH/dense"
        DATABASE_PATH="$FOLDER_PATH/database.db"

        echo "Processing: $folder"

        # Step 1: Feature Extracting
        colmap feature_extractor \
            --database_path "$DATABASE_PATH" \
            --image_path "$IMAGES_PATH" \
            --ImageReader.single_camera 1

        # Step 2: Feature Matching
        colmap exhaustive_matcher \
            --database_path "$DATABASE_PATH"

        # Step 3: Sparse Reconstruction (Mapper)
        mkdir -p "$SPARSE_PATH/0"
        colmap mapper \
            --database_path "$DATABASE_PATH" \
            --image_path "$IMAGES_PATH" \
            --output_path "$SPARSE_PATH"

        # Step 4: Image Undistortion
        colmap image_undistorter \
            --image_path "$IMAGES_PATH" \
            --input_path "$SPARSE_PATH/0" \
            --output_path "$DENSE_PATH" \
            --output_type COLMAP

        # Step 5: Stereo (dense matching)
        colmap patch_match_stereo \
            --workspace_path "$DENSE_PATH" \
            --workspace_format COLMAP \
            --PatchMatchStereo.geom_consistency true

        # Step 6: Fusion (point cloud)
        colmap stereo_fusion \
            --workspace_path "$DENSE_PATH" \
            --workspace_format COLMAP \
            --input_type geometric \
            --output_path "$DENSE_PATH/fused.ply"

        echo "Completed: $folder"

        # PLUS Dongmin Lee's extra step
        # Step 7: Deleting dense/stereo

        for stereo_dir in $BASE_DIR/*/dense/stereo; do
          if [ -d "$stereo_dir" ]; then
            rm -rf "$stereo_dir"
            echo "Deleted: $stereo_dir"
          fi
        done
    fi
done
