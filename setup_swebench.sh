#!/bin/bash
mkdir config
curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/config/swebench.env -o config/swebench.env

source ./config/swebench.env

folder="$SWEBENCH_FOLDER"

mkdir $folder
cd $folder

echo "Creating venv!"
python3 -m venv .venv_swe > ./setup.log 2>&1
source .venv_swe/bin/activate

echo "Installing mini-swe-agent"
pip install --upgrade pip > ./setup.log 2>&1
pip install mini-swe-agent > ./setup.log 2>&1

echo "Fetching files!"
curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/swebench.yaml -o swebench.yaml
curl -L https://raw.githubusercontent.com/viktorgudleifsson/vica_agent/main/swebench.yaml -o run_swebench.sh

echo "Setup of SWE-bench Lite complete!"
echo "Environment created: $folder/.venv_$folder"