@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"App-NetCore/Dockerfile",
                    DockerImage:"priscillajb/appnetcore-${BUILD_ID}",
                    DockerContext:"app-netcore")
                }
            }
        }

    stage('docker push'){
        steps{
            script{
                dockerLib.push(DockerImage:"priscillajb/appnetcore-${BUILD_ID}")
            }
            }
        }
    }
}
