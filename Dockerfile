FROM amazon/aws-cli:latest

RUN yum update -y \
    && yum install -y python3 java-11-openjdk-devel \
    && yum clean all
