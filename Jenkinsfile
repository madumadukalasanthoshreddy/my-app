@Library("mylibs") _
pipeline {
  agent any
  tools {
  maven 'maven2'
}
  stages {
   stage('Maven Build') {
      steps {
        sh "mvn clean package"
      }
    }
    stage("Deploy to Dev"){
      steps {
        tomcat-Deploy("tomcat-dev","ec2-user","172.31.87.89")
      }
   }
 }
}
