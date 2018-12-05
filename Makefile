VERSION ?= 0.0.1
NAME ?= "ingress-default"
AUTHOR ?= "Kevin H"
PORT_EXT ?= 8080
PORT_INT ?= 8080
NO_CACHE ?= true

.PHONY: build run stop clean

build:
	docker build --target scratch . -t $(NAME)\:$(VERSION) --no-cache=$(NO_CACHE)

run:
	docker run --name $(NAME) -d -p $(PORT_EXT)\:$(PORT_INT) $(NAME):$(VERSION) && docker ps -a --format "{{.ID}}\t{{.Names}}"|grep $(NAME)

stop:
	docker rm $$(docker stop $$(docker ps -a -q --filter "ancestor=$(NAME):$(VERSION)" --format="{{.ID}}"))

clean:
	@rm -f main

DEFAULT: build