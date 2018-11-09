build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o hazelcast_exporter
docker: build
	docker build . -t craftypenguins/hazelcast-exporter:0.5
push: docker
	docker push craftypenguins/hazelcast-exporter:0.5
