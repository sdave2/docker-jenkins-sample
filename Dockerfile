FROM ubuntu:14.04
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2016-06-01
RUN apt-get update
RUN apt-get -y install ruby rake
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec bundle
RUN useradd -ms /bin/bash jenkins
RUN chown -R jenkins:jenkins /opt/project
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
