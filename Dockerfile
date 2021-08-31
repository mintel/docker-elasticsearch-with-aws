FROM docker.elastic.co/elasticsearch/elasticsearch:7.11.2

# Install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs discovery-ec2
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs mapper-size
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs repository-s3
