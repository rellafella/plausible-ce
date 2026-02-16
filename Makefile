local:
	docker compose -f compose.yml -f compose.local.yml -f compose.override.yml up -d --remove-orphans

prod:
	docker compose -f compose.yml -f compose.prod.yml -f compose.override.yml up -d --remove-orphans

down:
	docker compose down