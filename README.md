# ESP32 Dev Container

I set up a quick docker container to do ESP32 dev work on my machine without installing a ton of stuff on my mac.

## How to use it

* Install Docker on your machine
* chmod +x build-container.sh run-container.sh
* ./build-container.sh
* edit the run-container.sh file to point to your project
* ./run-container.sh
* you will be put into the bash shell; go from there

## What's it do?

* Install ESP32 toolchain, adds it to the PATH
* Alias get_esp32
* Gives access to USB serial ports via privileged mode