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
        
        stage('Maven Test'){
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Maven Package'){
            steps {
                sh 'mvn package'
            }
        }
        
        stage('Create Docker Image'){
            steps {
                sh "docker build -t ashish/springboot:latest ."
            }
        }
    }
}
