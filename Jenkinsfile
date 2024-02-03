pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Execute a shell command
                sh 'docker build -t html-docker:v1 .'

            }
        }
        stage('Run') {
            steps {
                // Execute a shell command
                sh 'docker run -d -p 80:80 html-docker:v1'

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
