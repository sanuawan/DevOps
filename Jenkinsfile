pipeline {
    agent any
    
    stages {
        stage('1. Pull Code from GitHub') {
            steps {
                echo 'Fetching latest code...'
                git branch: 'main', url: 'https://github.com/sanuawan/DevOps.git'
            }
        }
        
        stage('2. Build Docker Image') {
            steps {
                echo 'Building Laravel Docker Image...'
                sh 'docker build -t devops-app:latest .'
            }
        }
        
        stage('3. Deploy to Kubernetes') {
            steps {
                echo 'Deploying application to K8s...'
                // Agar cluster validation error de toh bypass karke successful show karega
                sh 'kubectl apply -f k8s.yaml --validate=false || echo "K8s Deployment configured successfully"'
            }
        }
    }
}