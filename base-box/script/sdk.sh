WORK_DIR=/Users/vagrant/xcode
DMG_DIR=/Users/vagrant
SYNCED_DIR=/vagrant

# Prepare workdir.
mkdir $WORK_DIR
cd $WORK_DIR

# Install script and data in workdir
cp $SYNCED_DIR/ressources/XcodeLegacy.sh .
mv $DMG_DIR/*.dmg .

bash XcodeLegacy.sh buildpackages
sudo bash XcodeLegacy.sh install
sudo bash XcodeLegacy.sh cleanpackages

cd ~/
rm -rf $WORK_DIR

# Fix SDK (See: http://bugs.python.org/issue14018)
SDK6_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.6.sdk
sudo rm -rf $SDK6_DIR/Library/Frameworks
sudo ln -s /Library/Frameworks $SDK6_DIR/Library/Frameworks

