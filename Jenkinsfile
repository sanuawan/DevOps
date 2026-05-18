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
                // Jenkins ko command bhej rahe hain image build karne ke liye
                sh 'docker build -t devops-app:latest .'
            }
        }
        
        stage('3. Deploy to Kubernetes') {
            steps {
                echo 'Deploying application to local K8s cluster...'
                // Kubernetes ko k8s.yaml file read karwa ke deploy kar rahe hain
                sh 'kubectl apply -f k8s.yaml'
            }
        }
    }
}