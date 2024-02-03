pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Execute a shell command
                sh 'sudo docker build -t html-docker .'

            }
        }
        stage('Run') {
            steps {
                // Execute a shell command
                sh 'sudo docker run -it html-docker'

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
