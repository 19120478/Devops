pipeline {
    agent any
    stages {
        stage('Clone'){
            steps{
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/19120478/devops.git'
            }
        }
        stage('Build'){
            steps{
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    bat 'docker build -t 19120478/devops:v1 -f Dockerfile .'
                    bat 'docker push 19120478/devops:v1'
                }
            }
        }
    }
}