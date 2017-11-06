pipeline {
    agent none

  stages {
    stage('Build') {
      steps {
        docker build -t MyApp:1.0 .
      }
    stage('Run')
        steps {
            docker run -d -p 9000:9000 MyApp:1.0
        }
    }
  }
}
