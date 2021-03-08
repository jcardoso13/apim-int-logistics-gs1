

SUBS?=44685035-1fa7-4806-ad41-1728fa06995d
RG?=AzureLogistics-dev


all:
		az account set -s $(SUBS)
		az deployment group create --resource-group $(RG) --template-file ./templates/apim-int-deloitte-master.template.json --parameters ./templates/apim-int-deloitte-parameters.json
deploy: 
		az deployment group create --resource-group $(RG) --template-file ./templates/apim-int-deloitte-master.template.json --parameters ./templates/apim-int-deloitte-parameters.json
