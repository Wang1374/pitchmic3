pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "ls -a"	
                sh "mvn clean package"
            }
        }
    }
}
