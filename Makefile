build:
	npm run build

run: build
	docker-compose up -d
	docker-compose logs -f

clean:
	docker-compose down -v
