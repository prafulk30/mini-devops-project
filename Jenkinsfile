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
                bat '"C:\\Users\\prafu\\AppData\\Local\\Programs\\Python\\Python313\\python.exe" -m pytest app/test_app.py'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t mini-devops-app .'
            }
        }
        stage('Run Container') {
            steps {
                // Stop and remove old container if it exists
                bat '''
                docker ps -a -q --filter "name=mini-devops-container-v3" | findstr . && docker rm -f mini-devops-container-v3 || echo "No old container to remove"
                docker run -d --name mini-devops-container-v3 -p 5030:5000 mini-devops-app
        '''
    }
}

    }
}
