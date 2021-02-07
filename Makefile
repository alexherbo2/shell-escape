build:
	shards build --release

install: build
	mkdir -p ~/.local/bin
	ln -sf "${PWD}/bin/shell-escape" ~/.local/bin

uninstall:
	rm -f ~/.local/bin/shell-escape

clean:
	rm -Rf bin
