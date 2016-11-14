PACKAGE=wdb-clean-keep-last-referencetimes
VERSION=1.0
DEBPACKAGE=${PACKAGE}-$VERSION

echo $PACKAGE
echo $VERSION
echo $DEBPACKAGE


rm -r $DEBPACKAGE
cp -r $PACKAGE $DEBPACKAGE

tar cvzf ${PACKAGE}_$VERSION.orig.tar.gz $DEBPACKAGE

cd $DEBPACKAGE

dpkg-buildpackage -us -uc -rfakeroot

