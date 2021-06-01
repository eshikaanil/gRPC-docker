FROM python:3.8-slim
COPY . /app
WORKDIR /app
EXPOSE 6443
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY unary_server.py .
CMD ["python", "./unary_server.py"]
