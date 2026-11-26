OUTPUT_DIR="output_$(date +%Y%m%d_%H%M%S)"

mini-extra swebench \
        --config ./swebench.yaml \
        --model $MODEL_NAME \
        --workers 1 \
        --shuffle \
        --slice 0:1 \
        --environment-class $ENVIRONMENT_CLASS \
        --output results/OUTPUT_DIR