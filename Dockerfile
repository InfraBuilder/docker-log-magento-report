FROM 	alpine:3
ENV	REPORT_DIR="/var/report"
RUN 	apk add --update \
		bash \
		incron \
		jq \
	&& rm -rf /var/cache/apk/*
COPY	files/ /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["incrond","-n"]
