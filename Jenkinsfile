pipeline {
    agent {
        label 'slave'
    }
    stages {
        stage('Git clone'){
            steps {
                git branch: 'main', url: 'https://github.com/ashishrameshan/jenkins-learning-repo.git'
            }
        }
        
        stage('Maven Package'){
            steps {
                sh 'mvn package'
            }
        }

        stage('Prepare working directory'){
            steps {
                sh "mkdir -p /tmp/app"
            }
        } 
        
        stage('Create Docker Image'){
            steps {
                sh "docker build -t ashish/springboot:latest ."
            }
        }
    }
}
