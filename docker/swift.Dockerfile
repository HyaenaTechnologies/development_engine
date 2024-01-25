FROM amd64/swift:latest

WORKDIR /swift_application

COPY ./ ./

RUN swift package -v resolve
RUN swift package -v show-dependencies
RUN swift package -v update
RUN swift run -v ./lib/main.swift
RUN swift test -v
RUN swift build -v

ENTRYPOINT ["/bin/linux/swift_application"]