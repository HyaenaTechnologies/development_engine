FROM amd64/golang:latest

WORKDIR /go_application

COPY ./ ./

RUN go doc
RUN go env
RUN go fix ./lib
RUN go fmt ./lib
RUN go get
RUN go list
RUN go list -m
RUN go mod download
RUN go mod graph
RUN go mod verify
RUN go run ./lib/main.go
RUN go test -v ./test
RUN go version
RUN go vet ./lib
RUN go work sync
RUN go work use ./
RUN GOOS=linux GOARCH=amd64 go build -o ./bin/linux/amd64/go_application ./lib/main.go
RUN GOOS=linux GOARCH=arm64 go build -o ./bin/linux/arm64/go_application ./lib/main.go

ENTRYPOINT ["/bin/linux/amd64/go_application"]