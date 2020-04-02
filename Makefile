.PHONY: steamcmd
steamcmd:
	cd steamcmd && docker build -t 4funIO/steamcmd .
	docker run -ti --rm 4funIO/steamcmd

.PHONY: rust
rust:
	cd rust && docker build -t 4funIO/rust .
	docker run -ti --rm -p 28015:28015/udp -p 28016:28016 4funIO/rust