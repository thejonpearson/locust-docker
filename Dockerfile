# Jon Pearson @ WWT - 2019

FROM python:3.7-alpine

RUN 	apk --no-cache add --virtual=.build build-base \ 
	&& apk --no-cache add zeromq-dev \
	&& pip install --no-cache-dir locustio \
	&& apk del .build 

COPY docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh \
	&& mkdir /locustio

WORKDIR /locustio

EXPOSE 8089

ENTRYPOINT ["/docker-entrypoint.sh"]
