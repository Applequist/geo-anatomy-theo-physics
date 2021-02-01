.PHONY: build

build: clean
	@echo "====> Building book"
	mdbook build -d docs

clean:
	@echo "====> Cleaning book directory"
	rm -rf docs/*

deploy: deploy
	@echo "====> deploying to github"
	git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push 
