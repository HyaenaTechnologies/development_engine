FROM amd64/fedora:latest

WORKDIR /zig_application

COPY ./ ./

RUN dnf upgrade
RUN dnf install zig
RUN zig build

ENTRYPOINT ["/bin/linux/zig_application"]