FROM fedora:27

MAINTAINER josgonza@redhat.com

RUN \
 dnf clean all && \
 dnf install http://people.redhat.com/mcroce/packages/netperf-2.7.1-3.x86_64.rpm -y

USER 1001

ENTRYPOINT ["/usr/bin/netserver", "-D"]
 EXPOSE 12865
