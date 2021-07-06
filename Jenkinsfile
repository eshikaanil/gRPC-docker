node {
    
    stage("Git Cloning the Repository"){
        
        git branch: 'main', credentialsId: 'GIT_HUB_CREDENTIALS', url: 'https://github.com/eshikaanil/gRPC-docker-kubernetes.git'
    }
    
    stage("Building the Docker Image of gRPC Server"){
        
        sh '''docker build -t img . '''
    }
    
    stage("Deploying the Docker Image on Kubernetes Cluster On-Premise System"){
        
        kubeconfig(credentialsId: 'mykubeconfig') {
        
        sh '''kubectl create -f grpc-svc.yaml '''
        
        }
    
    }
    stage("Getting Client Response Locally On-Premise System"){
        
        sh '''pip install --upgrade protobuf'''
        
        sh '''python3 unary_client.py '''
    }
}
