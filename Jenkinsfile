pipeline
{
    agent any 
    stages
    {
      
         stage ('building the code using maven')
        {
            steps
            {
            withMaven(maven : 'MAVEN_HOME')
            {
                 sh 'mvn install'
            }
            }
            
        }
        stage ('deploy the code ')
        {
            steps
            {
                sh ' cp -R /var/lib/jenkins/workspace/first/target/* /opt/apache-tomcat-9.0.6/webapps/ '
            }
            
        }
    }
}
