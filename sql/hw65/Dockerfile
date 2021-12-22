
FROM centos:7
ENV container docker

RUN yum -y install wget
RUN yum -y install perl-Digest-SHA
RUN yum -y install java-1.8.0-openjdk.x86_64

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.16.1-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.16.1-linux-x86_64.tar.gz.sha512
RUN shasum -a 512 -c elasticsearch-7.16.1-linux-x86_64.tar.gz.sha512
RUN tar -xzf elasticsearch-7.16.1-linux-x86_64.tar.gz

RUN groupadd elasticsearch && useradd elasticsearch -g elasticsearch -p elasticsearch
RUN mkdir /var/lib/elasticsearch && cd /var/lib/elasticsearch/ ; mkdir data logs snapshots;
RUN chown -R elasticsearch:elasticsearch /var/lib/elasticsearch/
RUN chown -R elasticsearch:elasticsearch /elasticsearch-7.16.1

ENV ES_HOME="/elasticsearch-7.16.1"
RUN mv ${ES_HOME}/config/elasticsearch.yml ${ES_HOME}/config/elasticsearch.yml.main

RUN echo "node.name: netology_test" > ${ES_HOME}/config/elasticsearch.yml;\
    echo "cluster.name: my-elastic" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "discovery.zen.minimum_master_nodes: 1" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo 'cluster.initial_master_nodes: ["netology_test"]' >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "node.master: true" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "node.data: true" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "path.data: /var/lib/elasticsearch/data/" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "path.logs: /var/lib/elasticsearch/logs/" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "path.repo: /var/lib/elasticsearch/snapshots/ " >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "network.host: 0.0.0.0" >> ${ES_HOME}/config/elasticsearch.yml;\
    echo 'discovery.seed_hosts: ["0.0.0.0"]' >> ${ES_HOME}/config/elasticsearch.yml;\
    echo "http.port: 9200" >> ${ES_HOME}/config/elasticsearch.yml

USER elasticsearch
CMD [ "/elasticsearch-7.16.1/bin/elasticsearch" ]
