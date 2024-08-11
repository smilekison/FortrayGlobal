pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "This pipeline creates a website war file"
            }
        }

        stage('Compile') {
            // agent {
            //     label 'compile'
            // }
            steps {
                echo "Compiling"
                // sh 'mvn -B -DskipTests clean package'
                sh 'mvn package'
                echo "Finished compiling"
            }
        }

        stage('Test') {
            // agent {
            //     label 'test'
            // }
            steps {
                echo "Test stage"
                sh 'mvn test'
            }
        }
    }

    post {
        success {
            echo "Archiving artifact"
            archiveArtifacts artifacts: 'target/*.jar', allowEmptyArchive: false
        }
        failure {
            echo "Build failed, no artifacts to archive."
        }
    }
}

