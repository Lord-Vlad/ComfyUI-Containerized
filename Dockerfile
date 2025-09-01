# FROM pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime
FROM pytorch/pytorch:2.7.1-cuda11.8-cudnn9-runtime

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8188

CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188"]