pipeline {
    agent any
    
    environment {
        DOCKER_HUB_REPO = 'your-dockerhub-username/my-app' // Replace with your Docker Hub repository
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/smilekison/FortrayGlobal.git' // Replace with your GitHub repository URL
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
                    // Use the credentials stored in Jenkins
                    withCredentials([usernamePassword(credentialsId: 'dockerhub_credentials1', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                        docker.withRegistry('', "${DOCKER_HUB_USERNAME}:${DOCKER_HUB_PASSWORD}") {
                            dockerImage.push()
                            dockerImage.push('latest')
                        }
                    }
                }
            }
        }
        
        // stage('Deploy') {
        //     steps {
        //         script {
        //             dockerImage.run('-d -p 5000:5000')
        //         }
        //     }
        // }
    }
    
    // post {
    //     always {
    //         cleanWs() // Clean up workspace after the pipeline runs
    //     }
    // }
}
