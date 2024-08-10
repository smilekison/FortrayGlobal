pipeline {
    agent none
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

