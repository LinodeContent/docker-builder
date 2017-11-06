pipeline {
    agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t MyApp .'
      }
    }
    stage('Run') {
        steps {
        sh 'docker run -d -p 9000:9000 MyApp'
        }
    }
  }
}
