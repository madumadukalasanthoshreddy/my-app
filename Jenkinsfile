pipeline {
  agent any
  tools {
    maven 'maven2'
  }
  stages{
    stage("scm checkout") {
      steps{
        git credentialsId: 'java', url: 'https://github.com/madumadukalasanthoshreddy/my-app'
      }
    }
    stage ("maven build") {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}
