# install python dependencies
echo 'install python-dependencies...'
python get-pip.py
sudo -H pip install numpy scipy Cython 
sudo ln -s /usr/local/lib/python2.7/dist-packages/numpy /usr/lib/python2.7/dist-packages/numpy

echo '#numpy include path' >> ~/.bashrc
echo 'export CPP_INCLUDE_PATH=/usr/local/lib/python2.7/dist-packages/numpy/core/include:$CPP_INCLUDE_PATH' >> ~/.bashrc
echo 'export C_INCLUDE_PATH=/usr/local/lib/python2.7/dist-packages/numpy/core/include:$C_INCLUDE_PATH' >> ~/.bashrc

sudo -H pip install scikit-image scikit-learn 
sudo -H pip install matplotlib 
#sudo pip install pyopencv
sudo -H pip install ipython jupyter
sudo -H pip install protobuf
sudo -H pip install h5py leveldb lmdb
sudo -H pip install networkx nose
sudo -H pip install pandas
sudo -H pip install python-dateutil
sudo -H pip install python-gflags pyyaml Pillow six pyzmq singledispatch
sudo -H pip install backports_abc certifi jsonschema graphviz  qtawesome pydot

source ~/.bashrc
