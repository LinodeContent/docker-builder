pipeline {
    agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t myapp:6 .'
      }
    }
    stage('Run') {
        steps {
        sh 'docker run -d -p 9000:9000 myapp:6'
        }
    }
    }
}
