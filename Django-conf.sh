ist:00938d0c6180351848da
Created 6 months ago
  Star 0
  Fork 0
 
 Code
 Revisions 1
Embed URL

<script src="https://gist.github.com/nferrari/00938d0c6180351848da.js"></script>

HTTPS clone URL

https://gist.github.com/00938d0c6180351848da.git

You can clone with  HTTPS, SSH, or Subversion. 
 Clone in Desktop
 Download ZIP
Python 2.7 + Django 1.8 on alwaysdata
Raw  gistfile1.txt
Create our environment directory
$ mkdir .local

Create a temporary directory
$ mkdir tmp

Install Python 2.7
$ cd tmp
$ wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
$ tar zxvf Python-2.7.9.tgz
$ cd Python-2.7.9
$ ./configure --prefix=$HOME/.local
$ make
$ make install

Change default Python version (to write in $HOME/.bash_profile)
$ export PYTHONPATH=$HOME/.local
$ export PATH=$PYTHONPATH:$PYTHONPATH/bin:$PATH

Install pip for Python 2.7
$ cd $HOME/tmp
$ wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py
$ python get-pip.py

Install some Python modules
$ pip install virtualenv virtualenvwrapper

Initialize virtualenvs (to write in $HOME/.bash_profile)
$ export WORKON_HOME=$HOME/.virtualenvs
$ mkdir -p $WORKON_HOME
$ source $PYTHONPATH/bin/virtualenvwrapper.sh

Create first virtualenv
$ mkvirtualenv myprojectenv

Install Django
$ pip install django==1.8.1
