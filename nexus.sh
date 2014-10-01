# Information Of Package

PKG_ALIAS=nexus
PKG_VERSION=nexus-2.9.2-01
PKG_PACKAGE=nexus-2.9.2-bundle.tar.gz
PKG_LINK=http://download.sonatype.com/nexus/oss/$PKG_PACKAGE

# Nexus
cd /tmp && \
curl -O -L $PKG_LINK && \
tar -zxf /tmp/$PKG_PACKAGE && \
mv /tmp/$PKG_VERSION /usr/local/$PKG_VERSION && \
mv /tmp/sonatype-work /usr/local/sonatype-work && \
ln -s /usr/local/$PKG_VERSION /usr/local/$PKG_ALIAS && \

sed -i "s/\(wrapper.java.command=\)java/\1\/usr\/local\/java\/bin\/java/" /usr/local/$PKG_ALIAS/bin/jsw/conf/wrapper.conf

useradd -m nexus && \
chown -R nexus:nexus /usr/local/sonatype-work && \
chown -R nexus:nexus /usr/local/$PKG_ALIAS /usr/local/$PKG_VERSION

# Clean up system
rm -rf /tmp/* /var/tmp/*
