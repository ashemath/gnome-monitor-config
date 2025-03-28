.PHONY : all clean get_deps install uninstall


all: build

clean:
	rm -rf build

get_deps:
	apt-get install build-essential ninja-build meson

install:
	cp build/src/gnome-monitor-config /usr/local/bin/

uninstall:
	rm -f /usr/local/bin/gnome-monitor-config

build:
	meson setup build/
	ninja -C build
