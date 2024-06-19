pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 
                """
                FROM "jenkins/jenkins:lts
                USER root
                RUN /bin/bash -c "apt-get install maven"
                mvn clean install
                """
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
