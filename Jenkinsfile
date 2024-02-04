pipeline {
    agent any
    
    environment {
        GITHUB_REPO_URL = 'https://github.com/pavan2115md/check.git'
        GITHUB_CREDENTIALS = 'WEBAC'
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the public GitHub repository
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: "${env.GITHUB_REPO_URL}"]]])
            }
        }

        stage('Build') {
            steps {
                // Build your code (replace 'your-build-command' with the actual build command)
                sh 'docker build -t pavan .'
            }
        }

        stage('Run Containers') {
            steps {
                // Run Docker containers (replace 'your-docker-run-command' with the actual run command)
                sh 'docker run -d pavan'
            }
        }
    }
}
