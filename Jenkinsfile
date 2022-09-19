node {
checkout scm
  docker.withRegistry('https://hub.docker.com','priscillajb-dockerhub'){
  def customImage = docker.build("priscillajb/appnetcore:1.0")
    customImage.push()
  }
}
