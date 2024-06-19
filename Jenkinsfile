pipeline {
    agent any
    tools {
           maven 'maven-3.9'
    }
    stages {
        stage('Initialize'){
            steps {
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
        }
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('image creation') {
            steps {
            sh  " docker build -t my-image"
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
