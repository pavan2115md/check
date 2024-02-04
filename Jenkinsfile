pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'your-docker-image-name'
        GITHUB_REPO_URL = 'https://github.com/your-username/your-repo.git'
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
                sh 'your-build-command'
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
                sh 'your-docker-run-command'
            }
        }
    }
}
