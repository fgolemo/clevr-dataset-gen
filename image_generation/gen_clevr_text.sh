#~/.local/bin/blender/blender --background --python render_images.py -- --num_images 1 --width 1920 --height 1080 --use_gpu 1 --max_objects 5 --save_blendfiles 1 --all_chars_visible
#~/.local/bin/blender/blender --background --python render_images.py -- --num_images 1 --width 960 --height 540 --use_gpu 1 --max_objects 3 --all_chars_visible --base_scene_blendfile data/base_scene_tub.blend --enforce_obj_visibility --split text
#~/.local/bin/blender/blender --background --python render_images.py -- --num_images 1 --width 256 --height 256 --use_gpu 1 --max_objects 3 --all_chars_visible --base_scene_blendfile data/base_scene_tub.blend --enforce_obj_visibility --split text

# Generate Train set
#~/.local/bin/blender/blender --background --python render_images.py -- --num_images 100 --use_gpu 1 --max_objects 3 \
#--all_chars_visible --base_scene_blendfile data/base_scene_tub.blend --enforce_obj_visibility --split train-clevr-text\
# --output_image_dir ../output/train/images/ --output_scene_dir ../output/train/scenes/ --output_scene_file ../output/train/CLEVR_scenes.json

# Generate Val set
~/.local/bin/blender/blender --background --python render_images.py -- --num_images 32 --use_gpu 1 --max_objects 3 \
--all_chars_visible --base_scene_blendfile data/base_scene_tub.blend --enforce_obj_visibility --split train-clevr-text\
 --output_image_dir ../output/val/images/ --output_scene_dir ../output/val/scenes/ --output_scene_file ../output/val/CLEVR_scenes.json

# Generate test set
~/.local/bin/blender/blender --background --python render_images.py -- --num_images 32 --use_gpu 1 --max_objects 3 \
--all_chars_visible --base_scene_blendfile data/base_scene_tub.blend --enforce_obj_visibility --split train-clevr-text\
 --output_image_dir ../output/test/images/ --output_scene_dir ../output/test/scenes/ --output_scene_file ../output/test/CLEVR_scenes.json
