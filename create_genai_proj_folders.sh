#!/usr/bin/env bash
#
# create_folders.sh
# -----------------
# This script creates project directories and files for genai_proj_one.
# Replace all "one" with your project name. 

# Delete the requirements.txt file if it exists
if [ -f requirements.txt ]; then
    rm requirements.txt
    echo "requirements.txt deleted"
fi

# Create directories
mkdir -p genai_proj_one \
         genai_proj_one/data/raw \
         genai_proj_one/data/processed \
         genai_proj_one/data/external

mkdir -p genai_proj_one/notebooks

mkdir -p genai_proj_one/src/data \
         genai_proj_one/src/models \
         genai_proj_one/src/app \
         genai_proj_one/src/utils

mkdir -p genai_proj_one/tests

# Create empty files
touch genai_proj_one/src/__init__.py \
      genai_proj_one/src/data/__init__.py \
      genai_proj_one/src/data/data_processing.py \
      genai_proj_one/src/models/__init__.py \
      genai_proj_one/src/models/model.py \
      genai_proj_one/src/utils/__init__.py \
      genai_proj_one/src/utils/helpers.py \
      genai_proj_one/src/app/__main__.py \
      genai_proj_one/src/app/app.py \
      genai_proj_one/tests/__init__.py \
      genai_proj_one/tests/test_model.py \
      requirements.txt \
      genai_proj_one/README.md \
      genai_proj_one/setup.py

# Add Flask to requirements.txt
echo flask >> requirements.txt
echo "Flask added to requirements.txt"

# Add Flask app to app.py
echo "from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
      return 'Hello, World!'

if __name__ == '__main__':
      app.run(host='0.0.0.0', port=5999)" >> genai_proj_one/src/app/app.py

echo "Flask app created in app.py" 

# Confirm the script is completed successfully  
echo "Project structure created successfully!"

