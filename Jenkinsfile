pipeline{
    agent {
        label 'docker'
    }
    environment {
       DOCKER_LOGIN_CREDENTIALS=credentials('do')
    }
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/surekamani/simplejava.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
                sh 'docker build -t surekamani/jan23:$BUILD_NUMBER .'
            }
        }
        stage('push') {
            steps {
                sh 'echo $DOCKER_LOGIN_CREDENTIALS_PSW | docker login -u $DOCKER_LOGIN_CREDENTIALS_USR --password-stdin'
                sh 'docker push surekamani/jan23:$BUILD_NUMBER'
            }
        }
        stage('deploy') {
            steps {
                sh 'docker run -itd -p 8080:8080 surekamani/jan23:$BUILD_NUMBER'
            }
        }
    }
}
