// pipeline {
//     agent any

//     environment {
//         // Reference the credentials stored in Jenkins
//         REMOTE_CREDENTIALS = credentials('remote-server-credentials')
//     }

//     stages {
//         stage('Checkout') {
//             steps {
//                 checkout scm
//                 echo "This pipeline creates a website war file"
//             }
//         }

//         stage('Compile') {
//             steps {
//                 echo "Compiling"
//                 sh 'mvn package'
//                 echo "Finished compiling"
//             }
//         }

//         stage('Test') {
//             steps {
//                 echo "Test stage"
//                 sh 'mvn test'
//             }
//         }

//         stage('Deploy to Remote Server') {
//             steps {
//                 script {
//                     // Perform SSH using the credentials
//                     sh """
//                     sshpass -p "${env.REMOTE_CREDENTIALS_PSW}" ssh -o StrictHostKeyChecking=no ${env.REMOTE_CREDENTIALS_USR}@<REMOTE_SERVER_IP> <<EOF
//                     echo "Deploying application on the remote server"
//                     EOF
//                     """
//                 }
//             }
//     }

//     post {
//         success {
//             echo "Archiving artifact"
//             archiveArtifacts artifacts: 'target/*.jar', allowEmptyArchive: false
//         }
//         failure {
//             echo "Build failed, no artifacts to archive."
//         }
//     }
// }

