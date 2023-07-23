
  
install UHD 
sudo apt-get remove -y uhd
sudo apt-get remove libuhd-dev libuhd003 uhd-host -y
sudo apt-add-repository --remove "deb http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/trusty trusty main"
sudo add-apt-repository ppa:ettusresearch/uhd -y
sudo apt-get update
sudo apt-get -y --allow-unauthenticated install python python-tk libboost-all-dev libusb-1.0-0-dev
 
unzip -o  uhd-3.15.0.0.zip
mkdir ./uhd-3.15.0.0/host/build
cd  ./uhd-3.15.0.0/host/build
cmake ../
make -j4
make test
make install
ldconfig 
cd ../../../




#copy UHD images 

mkdir /usr/local/share/uhd/images
tar zxvf uhd-images_3.15.0.0.tar.gz 
cp ./uhd-images_3.15.0.0/*  /usr/local/share/uhd/images

# uhd_images_downloader







