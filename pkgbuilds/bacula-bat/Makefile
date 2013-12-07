PACKAGES = \
	bacula-common \
	bacula-fd \
	bacula-console \
	bacula-bat

all: $(PACKAGES)

$(PACKAGES):
	mkdir -p "$@"
	m4 -D BUILDING=$@ PKGBUILD.in > "$@"/PKGBUILD.am
	sed -e "s,@PKGNAME@,$(@),g" "$(@)/PKGBUILD.am" > "$(@)/PKGBUILD"
	cp *.patch $(@)/
	cd "$(@)" && makepkg -fS
