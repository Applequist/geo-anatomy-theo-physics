.PHONY: deploy
deploy:
	@echo "====> deploying to github"
	git worktree add book gh-pages
	mdbook build
	cd book && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push origin gh-pages
