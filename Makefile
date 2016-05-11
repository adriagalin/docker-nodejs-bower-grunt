.PHONY: all update builder

update:
	./update.sh

builder:
	./builder.sh

default: update
