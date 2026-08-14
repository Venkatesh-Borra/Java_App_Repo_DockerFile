pipeline {
    agent any

    stages {
        stage('Pull The Code') {
            steps {
                git branch: 'main', credentialsId: 'github-creds', url: 'https://github.com/Venkatesh-Borra/Java_App_Repo_DockerFile.git'
            }
        }
        stage('Build The code ') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        
        stage('Build the Image') {
            steps {
                sh 'docker build -t borravenkatesh/vontimittablog:version_${BUILD_NUMBER} .'
            }
        }
        
        stage('Push the image') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'dockerhub-creds',
                usernameVariable: 'DOCKER_USERNAME',
                passwordVariable: 'DOCKER_PASSWORD'
            )
        ]) {
            sh '''
                echo "$DOCKER_PASSWORD" | docker login \
                    -u "$DOCKER_USERNAME" \
                    --password-stdin

                docker push \
                    borravenkatesh/vontimittablog:version_${BUILD_NUMBER}
            '''
        }
    }
}
    }
	
}