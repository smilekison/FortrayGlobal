pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "This pipeline deploys Redis server in Kubernetes"
            }
        }

        stage('Compile') {
            steps {
                echo "Compiling"
                sh 'mvn -B -DskipTests clean package'
                echo "Finished compiling"
            }
        }


        // stage('Test') {
        //     steps {
        //         echo "Test stage"
        //         sh 'mvn test'
        //     }
        //     post {
        //         always {
        //             junit 'target/surefire-reports/*.xml'
        //         }
        //     }
        // }
    }
}

