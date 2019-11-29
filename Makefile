.PHONY: noop mysql_upgrade clean

noop:
	@echo

clean:
	docker-compose stop
	docker-compose rm -f
	docker volume prune -f
	rm -rf volume/*

mysql_upgrade:
	docker-compose exec mysql mysql_upgrade
