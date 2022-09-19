node {
checkout scm
  docker.withRegistry('https://registry.hub.docker.com','priscilla-dockerhub'){
  def customImage = docker.build("priscillajb/appnetcore")
    customImage.push()
  }
}
