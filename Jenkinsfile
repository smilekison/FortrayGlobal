pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "This pipeline deploys maven project"
            }
        }

        stage('Compile') {
            agent {
                label 'compile'
            }
            steps {
                echo "Compiling"
                sh 'mvn -B -DskipTests clean package'
                // sh 'mvn package'
                echo "Finished compiling"
            }
        }

        stage('Test') {
            agent {
                label 'test'
            }
            steps {
                echo "Test stage"
                sh 'mvn test'
            }
        }
    }
}

