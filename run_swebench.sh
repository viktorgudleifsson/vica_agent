export MSWEA_COST_TRACKING=ignore_errors

rm -rf output_latest
OUTPUT_DIR="results/output_$(date +%Y%m%d_%H%M)"


source $SWEBENCH_VENV_NAME/bin/activate
source ./config/swebench.env

mini-extra swebench \
    --config ./swebench.yaml \
    --model "$MODEL_PROVIDER/$MODEL_NAME" \
    --workers 1 \
    --slice 0:1 \
    --shuffle \
    --environment-class "$ENVIRONMENT_CLASS" \
    --output $OUTPUT_DIR \
    --output output_latest