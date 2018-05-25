
![MickMake](https://www.mickmake.com/banner.png)


# The PiProjector
This repo contains everything related to my Pi Projector.

![PiProjector](https://github.com/MickMake/Project-PiProjector/raw/master/PiProjector.jpg)

## What is it?
The [DLP2000](http://www.ti.com/product/DLP2000) is a relatively cheap DMD, (Digital Mirror Device). It supports a resolution of 854 x 480. Not huge, but TI are selling their "[evaluation boards](http://www.ti.com/tool/DLPDLCR2000EVM)", (the DLP2000EVM), for around US$99 which is pretty cheap for a projector. However these eval boards are only designed for the [BeagleBone](http://beagleboard.org/bone).

So this is a simple adapter board that allows you to use an ordinary [Pi Zero W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/) instead of a BeagleBone.


## Why did I make it?
The DLP2000 was too cool to pass up and I wanted it to work on a Raspberry Pi Zero W, because... well... because...

Also I wanted to make the smallest cheapest pocket projector around.

The adapter board makes a much cleaner, more permanent install for a Pi Zero W rather than a rats nest of wires. (If you saw my video on this, you would understand.)


## What makes it special?
I think it's the only one of its kind. I know there are cheaper pico-projectors on AliExpress, but if you look carefully they are all limited to 640x480 or worse 320x240 resolution. They may *say* that it supports 4K HDMI, but this is scaled down.
In the end, you get more bang for your buck with the DLP2000EVM and now you can use any old Raspberry Pi! A Pi Zero W makes it the cheapest thing around.


## What else do you need?
The current Rev 1.0 & Rev 1.1 batch of boards I'm [selling on Tindie](https://www.tindie.com/products/mickmake/pi-projector/) as a plain "as is" PCB, although will be adding kit options later depending on demand.
Rev 2.0 I'll be selling as both a kit and fully populated and tested board.

You will also need:

* A [DLP2000EVM module](http://www.ti.com/tool/DLPDLCR2000EVM).
* Two 2x23 pin female headers.
* One Pi male header.
* Jumper cable to connect 5v power to DLP200EVM.


## PiProjector revisions

### Rev 1.0

Current status: Available on Tindie.

![1.0](https://github.com/MickMake/Project-PiProjector/raw/master/PCB/1.0/PiProjector-1.0.png)

Is a straight header to header adapter board. With the ability to power from a micro USB connector or from the DC jack on the DLP2000.
A nice big ground plane gives a rock solid display, but I've left a void so that it doesn't interfere with the Pi Zero W WiFi signal.
You can also mount the Pi Zero W above or below the PCB and mount the PCB above or below the projector, depending on how small you want the unit to be.

[PCB/1.0](PCB/1.0) - PDF schematics and board layout.


### Rev 1.1

Current status: In production.

![1.1](https://github.com/MickMake/Project-PiProjector/raw/master/PCB/1.1/PiProjector-1.1.png)

Adds an 8 port GPIO I2C expander, (MCP23008SO). This was added because all of the GPIOs on the Raspberry Pi are used up by the DLP2000EVM.
I also added a small notch to make it easier for someone to add/remove the SD card on the Pi Zero W.

[PCB/1.1](PCB/1.1) - PDF schematics and board layout.


### Rev 2.0

Current status: In production.

![2.0](https://github.com/MickMake/Project-PiProjector/raw/master/PCB/2.0/PiProjector-2.0.png)

Now with LiPo charging and LDO! Make it *really* portable! I've also dropped the microUSB connector for power and now using a plain DC jack.

[PCB/2.0](PCB/2.0) - PDF schematics and board layout.


### Future plans

In later versions I'll be adding:

* Increase DC voltage levels to support in car use, (up to 15v).
* Add 18650 LiPo battery holder.
* Camera mounting hole - so, you can easily attach to a camera tripod.
* Line out/headphone audio. (If you want to use audio currently, you'll need to make use of Bluetooth audio.)
* Servo control of focus.
* 3D printable enclosure.

