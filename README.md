# gRPC-docker

Run the server and client scripts separately on different terminals:

#1st terminal
python3 unary_server.py

#2nd terminal
python3 unary_client.py

#output
message: "Hello Server you there?"
message: "Hello I am up and running received \"Hello Server you there?\" message from you"
received: true

#dockerisation

#1st terminal
docker build -t img .
docker run -p 127.0.0.1:6443:6443/tcp img

#2nd terminal
python3 unary_client.py

#output
message: "Hello Server you there?"
message: "Hello I am up and running received \"Hello Server you there?\" message from you"
received: true

#deployment on kubernetes
kubectl create -f grpc-svc.yaml
python3 unary_client.py

#output
message: "Hello Server you there?"
message: "Hello I am up and running received \"Hello Server you there?\" message from you"
received: true




