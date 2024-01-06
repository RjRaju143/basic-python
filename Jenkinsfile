pipeline {
    agent any
    stages {
        stage('Setup python') {
            steps {
                script {
                    sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                    '''
                }
            }
        }
        stage('Gunicorn setup') {
            steps {
                script {
                    sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                    '''
                }
            }
        }
        stage('nginx setup') {
            steps {
                script {
                    sh '''
                    chmod +x nginx.sh
                    ./nginx.sh
                    '''
                }
            }
        }
    }
}
