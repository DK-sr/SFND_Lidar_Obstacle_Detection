# Clone latest PCL(Current is 1.9.1)
sudo apt-get update
sudo apt-get install -y git

cd ~/Documents
git clone https://github.com/PointCloudLibrary/pcl.git pcl-trunk
ln -s pcl-trunk pcl
cd pcl

# Install prerequisites
sudo apt-get install -y g++
sudo apt-get install -y cmake cmake-gui
sudo apt-get install -y doxygen
sudo apt-get install -y mpi-default-dev openmpi-bin openmpi-common
sudo apt-get install -y libflann1.9 libflann-dev
sudo apt-get install -y libeigen3-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libvtk6-dev libvtk6.3 libvtk6.3-qt
sudo apt-get install -y 'libqhull*'
sudo apt-get install -y libusb-dev
sudo apt-get install -y libgtest-dev
sudo apt-get install -y git-core freeglut3-dev pkg-config
sudo apt-get install -y build-essential libxmu-dev libxi-dev
sudo apt-get install -y libusb-1.0-0-dev graphviz mono-complete
sudo apt-get install -y qt-sdk openjdk-11-jdk openjdk-11-jre
sudo apt-get install -y phonon-backend-gstreamer
sudo apt-get install -y phonon-backend-vlc
sudo apt-get install -y libopenni-dev libopenni2-dev

# Compile and install PCL
mkdir release
cd release
cmake -DCMAKE_BUILD_TYPE=None -DBUILD_GPU=ON -DBUILD_apps=ON -DBUILD_examples=ON ..
make
sudo make install
