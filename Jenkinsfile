pipeline {
    agent any 
    stages {
        stage('Pull the code From GitHub') {
            steps {
                git branch: 'main', credentialsId: 'github-creds', url: 'https://github.com/Venkatesh-Borra/Java_App_Repo_DockerFile.git'
    }
        }

        stage('Build the code') 
        {
            steps {
                sh '''
                    mvn clean package -DskipTests
                    '''
                }
        }
        stage('Docker Image build') 
        {
            steps {
                sh '''
                    docker build -t java-app:Version_${BUILD_NUMBER} .
                    '''
                }
        }
}
}