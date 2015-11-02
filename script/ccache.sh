curl -L -O http://samba.org/ftp/ccache/ccache-3.2.2.tar.gz
tar xvzf ccache-3.2.2.tar.gz
cd ccache-3.2.2

./configure --prefix=/usr/local/ccache
make -j2
sudo make install

cd ..
rm -rf ccache-3.2.2 ccache-3.2.2.tar.gz

for COMP in gcc g++ cc c++ clang clang++
do
    sudo ln -s /usr/local/ccache/bin/ccache /usr/local/ccache/bin/$COMP
done
