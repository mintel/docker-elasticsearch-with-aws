# docker-elasticsearch-with-aws

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/mintel/elasticsearch-with-aws)](https://cloud.docker.com/u/mintel/repository/docker/mintel/elasticsearch-with-aws)

An Elasticsearch Docker image with the [EC2 Discovery], [Mapper Size], and [S3 Snapshot Repository] plugins installed.

## Release

To create a new release:

```sh
./release.sh x.y.z
git push --follow-tags
```

Docker Hub will build the new container.

<!-- Links -->
[EC2 Discovery]: https://www.elastic.co/guide/en/elasticsearch/plugins/current/discovery-ec2.html
[Mapper Size]: https://www.elastic.co/guide/en/elasticsearch/plugins/current/mapper-size.html
[S3 Snapshot Repository]: https://www.elastic.co/guide/en/elasticsearch/plugins/current/repository-s3.html
