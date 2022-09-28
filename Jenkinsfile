@Library("shared-library")_
pipeline {
    agent any
    
    environment {
        PROJECT_ROOT = 'app-netcore.csproj'
        REGISTRY = 'priscillajb/appnetcore'
    }
    
    stages{

		stage('Install'){
            steps{
				Dependencies()
            }
    }

    	stage('Build'){
            steps{
                Build(registry:REGISTRY,buildNumber:"${BUILD_NUMBER}")
            }
    }
}
}