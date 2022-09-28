@Library("shared-library")_
pipeline {
    agent any
    
    tools{
        dotnet 'dotnet'
    }
    
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