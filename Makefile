build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o hazelcast_exporter
docker: build
	docker build . -t hazelcast_exporter:latest
