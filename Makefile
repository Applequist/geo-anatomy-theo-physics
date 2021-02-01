.PHONY: deploy
deploy:
	@echo "====> deploying to github"
	rm -rf docs/*
	mdbook build -d docs
	cd docs && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push 
