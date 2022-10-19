// The failedStages variable is reused between stages
def failedStages=[]
//Declarative
pipeline {
  agent { label "docker" }
  //parameters {}
    
  options {
    timeout(time: 1, unit: "HOURS")
  }
  
  stages {
        stage("Docker Build") {
            steps {
              sh "/usr/local/bin/docker build -t web-server:v1 ."
            }
        }

        stage("Docker Deploy") {
            steps {
		sh "docker rm -f web-server" 
                sh "/usr/local/bin/docker run -d --name web-server -p 80:80 web-server:v1"
            }
        }
  }
}

