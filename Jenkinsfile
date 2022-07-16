pipeline {
  agent any
  stages{
    stage("scm checkout") {
      steps{
        git credentialsId: 'java', url: 'https://github.com/madumadukalasanthoshreddy/my-app'
      }
    }
  }
}
