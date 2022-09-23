FROM docker.elastic.co/elasticsearch/elasticsearch:8.1.3

# Install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs discovery-ec2
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs mapper-size
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs repository-s3
