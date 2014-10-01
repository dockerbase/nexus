# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Nexus Image Container

FROM dockerbase/service-java8

# Run dockerbase script
ADD     nexus.sh /dockerbase/
RUN     /dockerbase/nexus.sh

# Add nexus into runit
ADD	build/runit/nexus /etc/service/nexus/run

EXPOSE	8081

VOLUME	["/usr/local/sonatype-work", "/usr/local/nexus/conf"]
