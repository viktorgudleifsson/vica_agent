mkdir swebench-lite
cd swebench-lite

python3 -m venv .venv_swe
source .venv_swe/bin/activate

pip install --upgrade pip
pip install mini-swe-agent