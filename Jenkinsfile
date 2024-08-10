pipeline {
    agent {
        docker {
            image 'maven:3.9.0'
            args '-v /root/.m2:/root/.m2'
        }
    }
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

