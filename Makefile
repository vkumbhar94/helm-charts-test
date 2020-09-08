all: charts index

.PHONY: charts
charts:
	@helm package argus-test-env --destination docs
	@helm repo index docs --url=https://github.com/vkumbhar94/helm-charts-test

index:
	helm repo index ./ --url https://github.com/vkumbhar94/helm-charts-test
	mv index.yaml ./docs
