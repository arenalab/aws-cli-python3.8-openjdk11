FROM amazon/aws-cli:latest

RUN yum update -y \
    && yum install -y python3 java-11-openjdk-devel unzip wget
RUN wget https://downloads.apache.org/ant/binaries/apache-ant-1.10.10-bin.zip
RUN unzip apache-ant-*.zip
RUN mv apache-ant-1.10.10 apache-ant
RUN yum remove -y unzip wget
RUN yum clean all
