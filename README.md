# RAG Application Folder Structure

```
genai_proj_one/
├── data/
│   ├── raw/
│   ├── processed/
│   └── external/
├── notebooks/
├── src/
│   ├── __init__.py
│   ├── data/
│   │   ├── __init__.py
│   │   └── data_processing.py
│   ├── models/
│   │   ├── __init__.py
│   │   └── model.py
│   ├── app/
│   │   └── app.py
│   ├── utils/
│   │   ├── __init__.py
│   │   └── helpers.py
├── tests/
│   ├── __init__.py
│   └── test_model.py
├── requirements.txt
├── README.md
└── setup.py
# To create these folders under `genai_proj_one`, you can use the following shell commands:

This is scripted in create_genai_proj_folders.sh 

```sh
mkdir -p genai_proj_one/data/raw genai_proj_one/data/processed genai_proj_one/data/external
mkdir -p genai_proj_one/notebooks
mkdir -p genai_proj_one/src/data genai_proj_one/src/models genai_proj_one/src/utils
mkdir -p genai_proj_one/src/app
mkdir -p genai_proj_one/tests
touch genai_proj_one/src/__init__.py genai_proj_one/src/data/__init__.py genai_proj_one/src/data/data_processing.py
touch genai_proj_one/src/models/__init__.py genai_proj_one/src/models/model.py
touch genai_proj_one/src/utils/__init__.py genai_proj_one/src/utils/helpers.py
touch genai_proj_one/tests/__init__.py genai_proj_one/tests/test_model.py
touch genai_proj_one/src/app/app.py
touch genai_proj_one/requirements.txt genai_proj_one/README.md genai_proj_one/setup.py
```

'''
Run the create_genai_proj_folders.sh via commandline 

$ chmod +x /home/madhu/ragtest/create_genai_proj_folders.sh
$ ./create_genai_proj_folders.sh

This structure includes directories for data, notebooks, source code, and tests, along with essential files like `requirements.txt`, `README.md`, and `setup.py`.

```sh
#!/bin/sh

# Build the Docker image
docker build -t genai_proj_one .

# Run the Docker container
docker run -p 4000:5999 genai_proj_one

# Docker image Clean up commands 

# -> list all activate containers 
docker ps

# -> list all activate/nonactivte containers 
docker ps -a

# -> container delete is a two step, first stop and then remove   
docker stop <container-id>
docker rm <container-id> 

```
To stop the services, use:

```sh
docker-compose down
```

# Just basic code for app.py

#### Copy this code to app.py to test the skeleten of this and change the port of your choice that is available ####

# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5999)