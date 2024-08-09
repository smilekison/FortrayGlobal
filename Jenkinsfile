pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub_credentials1') // Replace 'dockerhub' with the ID of your Docker Hub credentials in Jenkins
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "Hello world from checkout"
            }
        }
        
        stage('Build') {
            steps {
                script {
                    // Build the Docker image with the build number as the tag
                    sh 'docker build -t smilekisan/fortray-lab:${BUILD_NUMBER} .'
                    echo "Image Built"
                }
            }
        }
        
        // stage('Login') {
        //     steps {
        //         script {
        //             // Log in to Docker Hub using the credentials from Jenkins
        //             sh 'echo $DOCKERHUB_CREDENTIALS_PASSWORD | docker login -u $DOCKERHUB_CREDENTIALS_USERNAME --password-stdin'
        //         }
        //     }
        // }
        
        // stage('Push') {
        //     steps {
        //         script {
        //             // Push the Docker image to Docker Hub
        //             sh 'docker push yourusername/myapp:${BUILD_NUMBER}'
        //         }
        //     }
        // }
        
        // stage('Deploy') {
        //     steps {
        //         script {
        //             // Stop and remove any existing container named 'myapp'
        //             sh 'docker stop myapp || true'
        //             sh 'docker rm myapp || true'
        //             // Run the new container from the Docker image
        //             sh 'docker run -d -p 3000:3000 --name myapp yourusername/myapp:${BUILD_NUMBER}'
        //         }
        //     }
        // }
    }
    
    // post {
    //     always {
    //         script {
    //             // Log out from Docker Hub
    //             sh 'docker logout'
    //         }
    //     }
    // }
}
