pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 
                """
                docker build -t jenkins-maven
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
