FROM docker.elastic.co/logstash/logstash:5.4.0
USER root
RUN yum install -y epel-release redis
RUN logstash-plugin install logstash-output-redis
ADD logstash-simple.conf /pipelines/logstash-simple.conf
