pipeline {
    agent none
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t MyApp .'
      }
    }
    stage('Run') {
        steps {
            docker run -d -p 9000:9000 MyApp
        }
    }
  }
}
