pipeline{

    agent any


        stages{

            stage('Testing Environment Setup'){

                 steps{

                 sh './scripts/testenvironment.sh'
                 
                 }

            }

            stage('Build'){

                steps{

                sh './scripts/build.sh'

                 }
            }
            
            stage('Tests'){

                steps{

                sh './scripts/test_service1.sh'
                sh './scripts/test_service2.sh'
                sh './scripts/test_service3.sh'
                sh './scripts/test_service4.sh'

                }
            }

            stage('Deploy'){

                steps{

                sh './scripts/deploy.sh'
                }
            }
        }
    }