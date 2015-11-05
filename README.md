### Description ###
The dcmotorUARTInterface is a command line interface for low-level communication with the dc motors via UART.
It works through driver library [libserial](http://sourceforge.net/projects/libserial/)

### Dependencies ###
install libserial (on linux) via:

```
#!bash
cd path/to/dcmotorUARTInterface/lib
tar -xvzf libserial-0.6.0rc2.tar.gz
cd libserial-0.6.0rc2
make
sudo make install
```
### Build steps ###

```
#!bash
cd path/to/dcmotorUARTInterface
cmake .
make
```