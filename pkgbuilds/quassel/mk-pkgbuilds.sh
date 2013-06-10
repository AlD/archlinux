#!/bin/sh

for pkg in 'quassel-git' 'quassel-light-git' 'quassel-client-git' 'quassel-client-light-git' 'quassel-core-git'; do
  mkdir -p "$pkg"
  sed -re "s,%PKGNAME%,$pkg,g" PKGBUILD > "${pkg}/PKGBUILD"
  pushd "$pkg"
  makepkg -fS
  popd
done
