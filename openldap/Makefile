NAME = openldap
VERSION = 1.0.0
REPO = 127.0.0.1:5000/$(NAME)

.PHONY: all pub tag build build-nocache

all: pub

build:
	docker build -t $(NAME):$(VERSION) --rm .

build-nocache:
	docker build -t $(NAME):$(VERSION) --no-cache --rm .

tag: build
	docker tag $(NAME):$(VERSION) $(REPO):$(VERSION)

pub: tag
	docker push $(REPO):$(VERSION)
