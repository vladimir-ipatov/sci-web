rm -rf ./sci-web
rm -f ./build
cp -fr ../sci_webinterface ./sci-web
tar czf ../sci-web_3.0.orig.tar.gz ./README.md debian/changelog debian/compat debian/control debian/copyright debian/dirs debian/install debian/rules debian/source sci-web nginx.conf build.sh uwsgi.conf
dpkg-buildpackage -rfakeroot
