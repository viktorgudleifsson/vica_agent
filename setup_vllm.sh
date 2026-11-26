#!/bin/bash

source ./config/vllm.env

folder="$VLLM_FOLDER"

mkdir "$folder"
cd "$folder"

uv venv --python 3.12 .venv_"$folder"
source .venv_"$folder"/bin/activate

uv pip install pip
uv pip install vllm --torch-backend auto

echo "Setup completed successfully!"
echo "Environment: $folder/.venv_$folder"
