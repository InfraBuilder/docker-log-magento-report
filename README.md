# Docker image infrabuilder/log-magento-report

```bash
docker run -d \
	-v {magento-report-path}:/var/report/ \
	-e REPORT_DIR=/var/report \
	--name log-magento-report \
	infrabuilder/log-magento-report
```
