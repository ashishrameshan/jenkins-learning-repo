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
        
        stage('Maven build'){
            steps {
                echo "Maven Build completed..."
            }
        }
        
        stage('Maven Deploy'){
            steps {
                echo "Maven Project Deployed..."
            }
        }
    }
}
