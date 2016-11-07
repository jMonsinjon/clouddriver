FROM java:8-jre

MAINTAINER delivery-engineering@netflix.com

COPY ./clouddriver-web/build/distributions/*.deb workdir/packages/

WORKDIR workdir

VOLUME /opt/clouddriver/credentials

RUN dpkg -i ./packages/*.deb

EXPOSE 7002

CMD ["/opt/clouddriver/bin/clouddriver"]
