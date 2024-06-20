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
        
        stage("build & SonarQube analysis") {
            agent any
            steps {
              withSonarQubeEnv('sonar') {
                sh 'mvn clean install sonar:sonar'
              }
            }
          }
        stage('image creation') {
            steps {
            sh  "docker build . -t latest"
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
