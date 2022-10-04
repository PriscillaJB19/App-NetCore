@Library("shared-library-2")_
pipeline {
    agent any
    
    tools {
	  nodejs 'NodeJS'
    }

    
    environment {
        PROJECT_ROOT = 'app-netcore'
        REGISTRY = 'priscillajb/appnetcore'
    }
    
    stages{

		stage('Install'){
            steps{
				Dependencies(project_root:PROJECT_ROOT)
            }
    }
    	stage('Build'){
            steps{
                Build(project_root:"${PROJECT_ROOT}",registry:"${REGISTRY}",buildNumber:"${BUILD_NUMBER}")
            }
    }

    stage('Push'){
        steps{
            Push(registry:"${REGISTRY}",buildNumber:"${BUILD_NUMBER}")
        }
    }
}
}
