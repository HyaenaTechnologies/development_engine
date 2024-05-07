FROM amd64/swift:latest

WORKDIR /swift_application

COPY ./ ./

RUN swift package resolve
RUN swift package update
RUN swift run ./lib/main.swift
RUN swift test
RUN swift build

ENTRYPOINT ["/bin/linux/swift_application"]