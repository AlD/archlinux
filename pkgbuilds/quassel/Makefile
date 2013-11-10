PACKAGES = \
	quassel-git \
	quassel-light-git \
	quassel-client-git \
	quassel-client-light-git \
	quassel-core-git

all: $(PACKAGES)

$(PACKAGES):
	mkdir -p "$@"
	m4 -D BUILDING=$@ PKGBUILD.in > "$@"/PKGBUILD.am
	sed -e "s,@PKGNAME@,$(@),g" "$(@)/PKGBUILD.am" > "$(@)/PKGBUILD"
	cd "$(@)" && makepkg -fS
