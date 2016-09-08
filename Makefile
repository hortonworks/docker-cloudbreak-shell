export MAVEN_METADATA_URL = maven.sequenceiq.com/releases/com/sequenceiq/cloudbreak-shell/maven-metadata.xml
export DOCKER_IMAGE = hortonworks/cloudbreak-shell

dockerhub:
	./deploy.sh $(VERSION)

.PHONY: dockerhub
