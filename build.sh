rm -rf ./sci-web
rm -f ./build
cp -fr ../sci_webinterface ./sci-web
rm -rf ./sci-web/.git ./sci-web/.gitmodules ./sci-web/.gitignore ./sci-web/django_gentelella/.gitignore ./sci-web/django_gentelella/.git
tar czf ../sci-web_3.5.orig.tar.gz ./README.md debian/changelog debian/compat debian/control debian/copyright debian/dirs debian/install debian/rules debian/source sci-web build.sh config
dpkg-buildpackage -rfakeroot
