.PHONY:  build  fmt vet test clean install plugin-install

all: build


fmt:
	@echo " -> checking code style"
	@! gofmt -d $(shell find . -path ./vendor -prune -o -name '*.go' -print) | grep '^'

vet:
	@echo " -> vetting code"
	@go vet ./...

test:
	@echo " -> testing code"
	@go test -v ./...


build: clean
	@echo " -> Building"
	mkdir -p bin
	CGO_ENABLED=0 go build  -o bin/terraform-provider-multipass src/* 
	@echo "Built terraform-provider-multipass"
	
install: build 
	cp bin/terraform-provider-multipass $$GOPATH/bin/terraform-provider-multipass

clean:
	@git clean -f -d -X