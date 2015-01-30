CC ?= gcc

jake:
	$(CC) -O3 -Wall -Werror -pedantic jake.c -o jake

install: jake
	install -m 0755 jake /usr/local/bin
	install -m 0644 jake.1 /usr/local/share/man/man1

uninstall:
	rm -f /usr/local/bin/jake
	rm -f /usr/local/share/man/man1/jake.1

compress:
	cd .. && tar jcvf jake_1.0.orig.tar.bz2 jake-1.0/ --exclude='debian' --exclude='.git' --exclude='.pc'

deb:
	debuild -us -uc

package: compress deb

.PHONY: install uninstall package compress deb

clean:
	rm -f jake
	cd .. && rm -f *.dsc *.build *.changes *.debian.tar.gz
	rm -rf debian/jake debian/jake.debhelper.log debian/jake.substvars
	rm -rf debian/jake-doc debian/jake-doc.debhelper.log debian/jake-doc.substvars
	rm -rf debian/files
