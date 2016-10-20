#cmake to build opencv
sudo apt-get -y install build-essential cmake pkg-config
#image I/O libraries
sudo apt-get -y install libjpeg62-dev
sudo apt-get -y install libtiff4-dev libjasper-dev
#GTK dev library
sudo apt-get -y install  libgtk2.0-dev
#video I/O libraries
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-devsudo apt-get -y install libdc1394-22-dev
#Can comment optional support libraries
#Optional - support for Firewire video cameras
sudo apt-get -y install libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev 
#Optional - video streaming libraries
sudo apt-get -y install python-dev python-numpy
#Optional - Python development environment and the Python Numerical library
sudo apt-get -y install libtbb-dev
sudo apt-get -y install libqt4-dev
echo "Updated Dependencies"
mkdir OpenCV
cd OpenCV
echo "Installing Package Tarball"
# This link is dead 
#wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.3/OpenCV-2.4.3.tar.bz2
#####
wget http://pkgs.fedoraproject.org/repo/pkgs/opencv/OpenCV-2.4.3.tar.bz2/c0a5af4ff9d0d540684c0bf00ef35dbe/OpenCV-2.4.3.tar.bz2
echo "Unzipping Tarball"
.*tar -xvf OpenCV-2.4.*.tar.bz2
cd OpenCV-2.4
mkdir build
cd build
echo "Making Build.."
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
make
echo "Almost done ;)"
sudo make install
	
