pipeline
{
    agent any 
    stages
    {
      
        stage ('deploy the code ')
        {
            steps
            {
                sh ' cp -R /var/lib/jenkins/workspace/declarative/target/* /opt/apache-tomcat-10.0.10/webapps/ '
            }
            
        }
        stage('SCM') {
    checkout scm
       }
  stage('SonarQube Analysis') {
    def mvn = tool 'MAVEN_HOME';
    withSonarQubeEnv() {
      sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=demo -Dsonar.projectName='demo'"
    }
  }
    }
}
