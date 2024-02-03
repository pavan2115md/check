pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Execute a shell command
                sh 'docker build -t my-html-container .'

            }
        }
        stage('Run') {
            steps {
                // Execute a shell command
                sh 'docker run -p 8080:90 my-html-container'

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
