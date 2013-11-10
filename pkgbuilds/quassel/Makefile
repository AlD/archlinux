PACKAGES = \
	quassel-git \
	quassel-light-git \
	quassel-client-git \
	quassel-client-light-git \
	quassel-core-git

all: $(PACKAGES) quassel-split
	m4 PKGBUILD.in > PKGBUILD.am

$(PACKAGES): BUILDING = $@
$(PACKAGES):
	mkdir -p "$@"
	sed -e "s,@PKGNAME[@],$(@),g" PKGBUILD.in > "$(@)/PKGBUILD"
	cd "$(@)" && makepkg -fS

quassel-split: BUILDING = $(PACKAGES)
quassel-split:
	echo hallo
