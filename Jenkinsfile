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
    stage("Deploy to Dev"){
      steps {
        sshagent(['tomcat-dev']) {
          sh "mv target/*.war target/webapp.war"
          sh "scp -o StrictHostKeyChecking=no target/webapp.war ec2-user@172.31.87.89:/opt/tomcat9/webapps/"
          sh "ssh ec2-user@172.31.87.89 /opt/tomcat9/bin/shutdown.sh"
          sh "ssh ec2-user@172.31.87.89 /opt/tomcat9/bin/startup.sh"
        }
      }
    }
  }
          
