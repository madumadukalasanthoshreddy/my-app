pipeline {
  agent any
  tools {
  maven 'maven2'
}
  stages {
//     stage('SCM checkout') {
//       steps {
//         git credentialsId: 'java', url: 'https://github.com/madumadukalasanthoshreddy/my-app'
//       }
//     }
   stage('Maven Build') {
      steps {
        sh 'mvn clean package'
      }
    }
 }
}
