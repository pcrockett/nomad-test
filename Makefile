IMAGE_NAME = nomad-test

shell:
	docker build --tag "$(IMAGE_NAME)" .
	docker run --rm -it "$(IMAGE_NAME)" /bin/bash
.PHONY: shell

up:
	docker compose up --build --wait
.PHONY: up

logs:
	docker compose logs --follow
.PHONY: logs

down:
	docker compose down
.PHONY: down

ui:
	xdg-open "http://localhost:${NOMAD_PORT}/ui/jobs"
.PHONY: ui
