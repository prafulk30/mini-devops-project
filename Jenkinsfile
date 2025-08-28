pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/prafulk30/mini-devops-project.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                bat 'C:\\Users\\prafu\\AppData\\Local\\Programs\\Python\\Python313\\Scripts\\pip.exe install -r app\\requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                bat 'pytest app/test_app.py'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t mini-devops-app .'
            }
        }
        stage('Run Container') {
            steps {
                bat 'docker run -d --name mini-devops-container -p 5010:5000 mini-devops-app'
            }
        }
    }
}
