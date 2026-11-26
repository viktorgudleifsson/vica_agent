OUTPUT_DIR="output_$(date +%Y%m%d_%H%M%S)"

source $SWEBENCH_VENV_NAME/bin/activate

mini-extra swebench \
    --config ./swebench.yaml \
    --model $MODEL_NAME \
    --workers 1 \
    --slice 0:1 \
    --shuffle \
    --environment-class "$ENVIRONMENT_CLASS" \
    --output $OUTPUT_DIR