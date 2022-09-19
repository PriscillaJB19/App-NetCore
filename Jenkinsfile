node {
checkout scm
  docker.withRegistry('https://registry.hub.docker.com','priscillajb-dockerhub'){
  def customImage = docker.build("priscillajb/appnetcore:1.0")
    customImage.push()
  }
}
