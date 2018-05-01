pipeline {
    agent any

    stages {
        stage('No-op') {
            steps {
                sh 'ls -ltr'
            }
        }
    }
    post {
        always {
            echo 'Cleaning the workspace and triggering mail'
            deleteDir() /* clean up our workspace */
            mail to: 'sathyamus@outlook.com',
             subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
             body: "Something is wrong with ${env.BUILD_URL}"
        }
        success {
            echo 'I succeeded!'
        }
        unstable {
            echo 'I am unstable :/'
        }
        failure {
            echo 'I failed :('
        }
        changed {
            echo 'Things were different before...'
        }
    }
}