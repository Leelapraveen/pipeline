pipeline {
    agent { label "mine" }
    stages {
        stage('checkout') {
            steps {
               script {
                   deleteDir()
               }
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('image creation') {
            steps {
            sh  "docker build -t my-image"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
