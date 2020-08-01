.PHONY: help
help: ## Display this help page
	@echo "\n\033[32mLatest release\033[0m: ${RELEASE}"
	@printf "\n\033[32mEnvironment Variables\033[0m\n"
	@cat $(MAKEFILE_LIST) | egrep -o "\\$$\{[a-zA-Z0-9_]*\}" | sort | uniq | \
		sed -E 's/^[\$$\{]*|\}$$//g' | xargs -I % echo % % | \
		xargs printf "echo \"\033[93m%-30s\033[0m \$$(printenv %s)\n\"" | bash | sed "s/echo //"
	@printf "\n\033[32mMake Targets\033[0m\n"
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		cut -d: -f2,3 | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""