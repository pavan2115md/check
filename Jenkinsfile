pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'pavan'
        GITHUB_REPO_URL = 'https://github.com/pavan2115md/check.git'
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the public GitHub repository
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: "${env.GITHUB_REPO_URL}"]]])
            }
        }

        stage('Build') {
            steps {
                // Build your code (replace 'your-build-command' with the actual build command)
                sh 'docker build -t pavan .'
            }
        }

        stage('Dockerize') {
            steps {
                // Build Docker image
                script {
                    docker.build(env.DOCKER_IMAGE_NAME)
                }
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
