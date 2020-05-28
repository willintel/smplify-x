
DATA_FOLDER="/media/psf/WVerbatim/data/smplify-x/data"
OUTPUT_FOLDER="/media/psf/WVerbatim/data/smplify-x/output"

DATA_FOLDER="/media/psf/WVerbatim/data/smplify-x/prox-data"
OUTPUT_FOLDER="/media/psf/WVerbatim/data/smplify-x/prox-output"

DATA_FOLDER="/media/psf/WVerbatim/data/mevolve/inhome-test-rig/2020_05_21/d435-dynamic-human_4shot-21_08_33/snapshots/body-fit-data"
OUTPUT_FOLDER="${DATA_FOLDER}/smplifyx"

MODEL_FOLDER="/media/psf/WVerbatim/data/mevolve/smplify-x/models"
VPOSER_FOLDER="/media/psf/WVerbatim/data/mevolve/smplify-x/vposer_v1_0"
python3 ~/dev/thirdparty/smplify-x/smplifyx/main.py \
    --config ~/dev/thirdparty/smplify-x/cfg_files/fit_smpl.yaml \
    --use_cuda=0 \
    --interpenetration=0 \
    --interactive=0 \
    --data_folder=${DATA_FOLDER} \
    --output_folder=${OUTPUT_FOLDER} \
    --visualize="False" \
    --model_folder ${MODEL_FOLDER} \
    --vposer_ckpt ${VPOSER_FOLDER} \
    --gender="male"

DATA_FOLDER="/media/psf/WVerbatim/data/smplify-x/data"
OUTPUT_FOLDER="/media/psf/WVerbatim/data/smplify-x/output"

DATA_FOLDER="/media/psf/WVerbatim/data/mevolve/inhome-test-rig/2020_05_21/d435-dynamic-human_4shot-21_08_33/snapshots/body-fit-data"
OUTPUT_FOLDER"${DATA_FOLDER}/smplifyx"

MODEL_FOLDER="/media/psf/WVerbatim/data/smplify-x/models"
VPOSER_FOLDER="/media/psf/WVerbatim/data/smplify-x/vposer_v1_0"
import sys
sys.argv = ["smplifyx/main.py", \
         "--config", "cfg_files/fit_smpl.yaml", \
         "--use_cuda", "0", \
         "--data_folder", DATA_FOLDER, \
         "--output_folder", OUTPUT_FOLDER, \
         "--visualize", "True", \
         "--model_folder", MODEL_FOLDER, \
         "--vposer_ckpt", VPOSER_FOLDER]



# openpose
./build/examples/openpose/openpose.bin \
  --image_dir ./examples/mevolve-media \
  --display 0 \
  --write_json ./examples/mevolve-media/json \
  --write_images ./examples/mevolve-media/output \
  --render_pose 1 \
  --model_pose "BODY_25" \
  --frame_rotate 90

  