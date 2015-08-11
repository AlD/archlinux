PKG:=$(lastword $(subst /, ,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))))

.PHONY: upload clean

all: PKGBUILD src

clean:
	rm -rf .SRCINFO \
	  ${PKG}.git    \
	  PKGBUILD      \
	  src

upload: .SRCINFO ${PKG}.git
	cd ${PKG}.git            && \
	cp ../$< ../PKGBUILD ./  && \
	git add $< PKGBUILD      && \
	git commit -m 'bump'     && \
	git push origin master

%.git:
	git clone ssh://aur@aur.archlinux.org/$@.git $@

src:
	makepkg -do
	make -W PKGBUILD.in

.SRCINFO: PKGBUILD
	mksrcinfo

%: %.in
	m4 $< > $*
