NAME = pwm/pwm-webapp
VERSION = latest
REPO = 127.0.0.1:5000/$(NAME)
PWM = https://github.com/pwm-project/pwm.git

.PHONY: all load tag pub

all: pub

source:
	git clone $(PWM) $@

source/docker/target/jib-image.tar: source
	cd $<; mvn package -Dmaven.test.skip=true

load: source/docker/target/jib-image.tar
	docker load --input=$<

tag: load
	docker tag $(NAME):$(VERSION) $(REPO):$(VERSION)

pub: tag
	docker push $(REPO):$(VERSION)
