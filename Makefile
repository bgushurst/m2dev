dockerRepo = bgushurst/m2dev
all_images = $(shell ls images)

build:
	@for image in $(all_images); do \
		@if [ ! -f images/$(image)/Dockerfile ]; then \
			echo "ERROR: No Dockerfile found for image $(image)"; \
			exit 1; \
		else \
			echo "Starting build of $(dockerRepo):$(image)"; \
			docker build --squash "images/$(image)" -t "$(dockerRepo):$(image)"; \
		fi
	done

publish:
	@for image in $(all_images); do \
		@if [ ! -f images/$(image)/Dockerfile ]; then \
			echo "ERROR: No Dockerfile found for image $(image)"; \
			exit 1; \
		else \
			echo "Publishing $(dockerRepo):$(image)"; \
			docker push "$(dockerRepo):$(image)"; \
		fi
	done