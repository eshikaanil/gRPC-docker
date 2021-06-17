node {
  stage('Build docker image') {
    /* This builds the actual image */
    sh """ docker build -t img . """
  }
  stage('Deploy To Kubernetes ') {
    /* This will deploy nginx image using Kubernetes*/
    steps {
      sh """
        kubectl create -f grpc-svc.yaml
        python3 unary_client.py
      """
  }
}
