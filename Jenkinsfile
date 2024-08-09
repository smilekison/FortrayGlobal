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
                echo "Current Git Branch: "${url}
            }
        }
    }
}