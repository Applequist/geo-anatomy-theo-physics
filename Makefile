.PHONY: deploy
deploy:
	@echo "====> deploying to github"
	mdbook build -d docs
	cd docs && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push 
