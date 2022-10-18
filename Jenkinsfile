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
                sh ' cp -R /var/lib/jenkins/workspace/declarative_pipeline/target/* /opt/apache-tomcat-8.0.11/webapps/ '
            }
            
        }
    }
}
