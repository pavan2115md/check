pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Execute a shell command
                sh 'docker build -t html-docker1:v1 .'

            }
        }
        stage('Run') {
            steps {
                // Execute a shell command
                sh 'docker run -d html-docker1:v1'

            }
        }
   
    }

    post {
        success {
            echo 'Pipeline successfully completed!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
