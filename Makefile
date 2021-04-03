build:
	shards build --release

install: build
	install -d ~/.local/bin
	install bin/shell-escape ~/.local/bin

uninstall:
	rm -f ~/.local/bin/shell-escape

clean:
	rm -Rf bin
