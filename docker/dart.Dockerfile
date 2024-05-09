FROM amd64/dart:latest

WORKDIR /dart_application

COPY ./ ./

RUN dart analyze lib
RUN dart doc .
RUN dart info
RUN dart fix lib --dry-run
RUN dart fix lib --apply
RUN dart format lib
RUN dart pub get
RUN dart pub deps
RUN dart pub upgrade
RUN dart run lib/main.dart
RUN dart test
RUN dart compile exe lib/main.dart --output /bin/linux/dart_application

ENTRYPOINT ["/bin/linux/dart_application"]