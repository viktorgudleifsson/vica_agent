#!/bin/bash
mkdir config
curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/config/swebench.env -o config/swebench.env

source ./config/swebench.env

folder="$SWEBENCH_FOLDER"

mkdir swebench-lite
cd swebench-lite

python3 -m venv .venv_swe > ./creating_venv.log
source .venv_swe/bin/activate

pip install --upgrade pip
pip install mini-swe-agent

curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/swebench.yaml -o swebench.yaml
curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/swebench.yaml -o run_swebench.sh

echo "Setup of SWE-bench Lite complete!"
echo "Environment created: $folder/.venv_$folder"