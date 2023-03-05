FROM fedora:37

MAINTAINER sergione

RUN \
 dnf clean all && \
 dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/37/Everything/x86_64/os/Packages/n/netperf-2.7.0-3.20210803git3bc455b.fc37.x86_64.rpm -y

USER 1001

ENTRYPOINT ["/usr/bin/netserver", "-D"]
 EXPOSE 12865
