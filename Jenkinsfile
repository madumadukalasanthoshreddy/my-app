pipeline {
  agent any
  tools {
    maven 'maven2'
  }
   stages{
    stage('SCM checkout') {
      steps {
        git credentialsId: 'javahome', url: 'https://github.com/madumadukalasanthoshreddy/my-app',branch : "master"
      }
    }
    stage ('Maven Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}
