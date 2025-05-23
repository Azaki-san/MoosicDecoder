APP = moosic-decoder
VERSION = 1.0.0

.PHONY: all clean build linux windows mac release

all: build

build:
	go build -o $(APP) main.go

linux:
	GOOS=linux GOARCH=amd64 go build -o $(APP)-linux main.go

windows:
	GOOS=windows GOARCH=amd64 go build -o $(APP).exe main.go

mac:
	GOOS=darwin GOARCH=arm64 go build -o $(APP)-mac-arm64 main.go

clean:
	rm -f $(APP) $(APP).exe $(APP)-linux $(APP)-mac-arm64

release: clean linux windows mac