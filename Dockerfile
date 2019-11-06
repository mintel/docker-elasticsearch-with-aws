FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.7

# Install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs discovery-ec2
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -bs repository-s3
