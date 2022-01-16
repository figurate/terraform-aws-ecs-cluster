SHELL:=/bin/bash
include .env

EXAMPLE=$(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

.PHONY: all clean validate test docs format example archive

all: validate test docs format

clean:
	rm -rf .terraform/

validate:
	$(TERRAFORM) init -reconfigure && $(TERRAFORM) validate

test: validate
	$(CHECKOV) -d /work

	$(TFSEC) /work

diagram:
	$(DIAGRAMS) diagram.py

docs: diagram
	$(TERRAFORM_DOCS) markdown ./ >./README.md

format:
	$(TERRAFORM) fmt -list=true ./ && \
		$(TERRAFORM) fmt -list=true ./examples/spotfleet

example:
	$(TERRAFORM) init examples/$(EXAMPLE) && $(TERRAFORM) plan -input=false examples/$(EXAMPLE)

archive:
	zip aws-ecs-cluster.zip *.tf *.png *.md
