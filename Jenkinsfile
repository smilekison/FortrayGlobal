pipeline {
    agent any
    
    environment {
        DOCKER_HUB_REPO = 'smilekisan/fortray-lab'
        DOCKER_HUB_CREDENTIALS = 'Docker-hub-credentials' // Jenkins credentials ID
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/smilekison/FortrayGlobal.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_HUB_REPO}:${env.BUILD_NUMBER}")
                }
            }
        }
        
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('', "${DOCKER_HUB_CREDENTIALS}") {
                        dockerImage.push()
                        dockerImage.push('latest')
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    dockerImage.run('-d -p 8080:8080')
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
