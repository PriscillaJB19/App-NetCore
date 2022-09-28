@Library("shared-library")_
pipeline {
    agent any
    
    environment {
        PROJECT_ROOT = 'app-netcore.csproj'
        REGISTRY = 'priscillajb/appnetcore'
    }
    
    stages{


    	stage('Build'){
            steps{
                Build(project_root:"${PROJECT_ROOT}",registry:"${REGISTRY}",buildNumber:"${BUILD_NUMBER}")
            }
    }
}
}