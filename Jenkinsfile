pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "ls -a"	
                sh "/Users/sw/tools/maven/apache-maven-3.9.9/bin/mvn clean package"
            }
        }
    }
}
