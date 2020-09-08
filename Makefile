all: charts index

.PHONY: charts
charts:
	@helm package argus-test-env --destination docs
	@helm repo index docs --url=https://vkumbhar94.github.io/helm-charts-test

index:
	helm repo index ./ --url https://vkumbhar94.github.io/helm-charts-test
	sed -i 's/\/docs//g' index.yaml
	mv index.yaml ./docs
