pipeline {
    agent any
    
    environment {
        DOCKER_HUB_REPO = 'smilekisan/fortray-lab' // Replace with your Docker Hub repository
        // echo "Dockerhub repo: "${DOCKER_HUB_REPO}
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo "Hello world"
                url: 'https://github.com/smilekison/FortrayGlobal.git'
                echo "Current Git Branch: '${url}
            }
        }
        
        // stage('Build Docker Image') {
        //     steps {
        //         script {
        //             dockerImage = docker.build("${DOCKER_HUB_REPO}:${env.BUILD_NUMBER}")
        //             echo "Docker Image: ${dockerImage}"
        //             echo "Docker Hub Repo: ${DOCKER_HUB_REPO}"
        //         }
        //     }
        // }
        
        // stage('Push to Docker Hub') {
        //     steps {
        //         script {
        //             // Use the credentials stored in Jenkins
        //             withCredentials([usernamePassword(credentialsId: 'dockerhub_credentials1', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
        //                 docker.withRegistry('', "${DOCKER_HUB_USERNAME}:${DOCKER_HUB_PASSWORD}") {
        //                     dockerImage.push()
        //                     dockerImage.push('latest')
        //                 }
        //             }
        //         }
        //     }
        // }
        
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
