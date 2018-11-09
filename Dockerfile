FROM scratch
MAINTAINER Nicole Macfarlane

COPY hazelcast_exporter /hazelcast_exporter
COPY hazelcast.yml /config/hazelcast.yml
EXPOSE 8080
CMD ["--listen", ":8080", "--config", "/config/hazelcast.yml"]
ENTRYPOINT ["/hazelcast_exporter"]
