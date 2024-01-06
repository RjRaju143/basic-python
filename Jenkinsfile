pipeline {
    agent any
    environment {
        DOCKER_COMPOSE_VERSION = '1.27.4'
    }

    stages {
        stage('Checkout'){
            steps {
                checkout scm
            }
        }

        stage('Build and Push Docker Image'){
            steps {
                script {
                    sh 'sudo docker-compose up --build'
                }
            }
        }

        // stage('')
    }
}
