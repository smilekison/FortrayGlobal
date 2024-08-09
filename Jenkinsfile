pipeline {
    agent any
    
    environment {
        DOCKER_HUB_REPO = 'smilekisan/fortray-lab' // Replace with your Docker Hub repository
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Print a simple message to verify the pipeline is running
                echo "Hello world"
                
                // Checkout from GitHub repository
                checkout([$class: 'GitSCM', 
                    branches: [[name: 'main']], 
                    userRemoteConfigs: [[url: 'https://github.com/smilekison/FortrayGlobal.git']]
                ])
                
                // Print the current Git branch
                sh 'echo "Current Git Branch: $(git rev-parse --abbrev-ref HEAD)"'
                
                // Print the Docker Hub repository
                echo "Docker Hub Repo: ${DOCKER_HUB_REPO}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building docker-image'
                    dockerImage = docker.build("${DOCKER_HUB_REPO}:${env.BUILD_NUMBER}")
                    echo "DockerImage is here:: ${dockerImage}"

                }
            }
        }
    }
}
