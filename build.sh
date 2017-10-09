rm -rf ./sci-web
rm -f ./build
cp -fr ../sci_webinterface ./sci-web
rm -rf ./sci-web/.git ./sci-web/.gitignore
tar czf ../sci-web_3.0.orig.tar.gz ./README.md debian/changelog debian/compat debian/control debian/copyright debian/dirs debian/install debian/rules debian/source sci-web build.sh sci-web.conf sci-web.ini
dpkg-buildpackage -rfakeroot
