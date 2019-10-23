# Docker Compose AWS Dockerfile

Container which can be used within Jenkinsfiles

Container includes make and git and the aws cli

### Example:
```
pipeline {
    agent {
        docker { image 'inogo/docker-compose:1.24.0' }
    }
    stages {
        stage('Build') {
            steps {
                sh 'make build'
                sh 'docker-compose -f docker-compose.test.yml up -d'
            }
        }
        
        stage('Test') {
            parallel {
                stage('backend') {
                    steps {
                        sh 'docker-compose -f docker-compose.test.yml exec -T backend test'
                    }
                }
                stage('frontend') {
                    steps {
                        sh 'docker-compose -f docker-compose.test.yml exec -T frontend test'
                    }
                }
            }
        }
    }
}
```