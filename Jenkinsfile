pipeline{

    agent any
    environment{
        DATABASE_URI=credentials('DATABASE_URI')
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

                sh './scripts/deploy.sh'
                }
            }
        }
    }