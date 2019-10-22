#Build and Push FakeSMTP image to repository
repository="gcr.io"
project_name="devops-test-228018"
docker build --tag ${repository}/${project_name}/fakesmtp:latest fakesmtp-docker
docker push ${repository}/${project_name}/fakesmtp:latest
