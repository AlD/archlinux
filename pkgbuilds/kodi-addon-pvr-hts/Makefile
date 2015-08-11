all: src PKGBUILD

src:
	makepkg -o

%: %.in
	m4 $< > $*
