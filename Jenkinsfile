pipeline{

    agent any
    environment{
        DATABASE_URI=credentials('DATABASE_URI')
        username=credentials('username')
        password=credentials('password')
    }

        stages{

            stage('Build'){

                 steps{
   
                sh 'chmod +x ./scripts/*'
                sh './scripts/build.sh'
                 
                 }

            }
            
            stage('Test'){

                steps{
        
                sh './scripts/test.sh'

                }
            }

            stage('Deploy'){

                steps{
                    
                sh 'docker stack deploy --compose-file docker-compose.yaml stack'
                }
            }
        }
    }