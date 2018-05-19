
![MickMake](https://www.mickmake.com/banner.png)


# The PiProjector
This repo contains everything related to my Pi Projector.

## What is it?
The [DLP2000](http://www.ti.com/product/DLP2000) is a relatively cheap DMD, (Digital Mirror Device). It supports a resolution of 854 x 480. Not huge, but TI are selling their "[evaluation boards](http://www.ti.com/tool/DLPDLCR2000EVM)", (the DLP2000EVM), for around US$99 which is pretty cheap for a projector. However these eval boards are only designed for the [BeagleBone](http://beagleboard.org/bone).

So this is a simple adapter board that allows you to use an ordinary [Pi Zero W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/) instead of a BeagleBone.


## Why did I make it?
The DLP2000 was too cool to pass up and I wanted it to work on a Raspberry Pi Zero W, because... well... because...

Also I wanted to make the smallest cheapest pocket projector around.

The adapter board makes a much cleaner, more permanent install for a Pi Zero W rather than a rats nest of wires. (If you saw my video on this, you would understand.)


## What makes it special?
Rev 1.0 - currently is a straight header to header adapter board. With the ability to power from a micro USB connector or from the DC jack on the DLP2000.
A nice big ground plane gives a rock solid display, but I've left a void so that it doesn't interfere with the Pi Zero W WiFi signal.
You can also mount the Pi Zero W above or below the PCB and mount the PCB above or below the projector, depending on how small you want the unit to be.

In later versions I'll be adding:

* LiPo battery powering and charging.
* Camera mounting hole - so, you can easily attach to a camera tripod.
* Line out audio! Currently all GPIOs are taken, so I'll need to think about this one. (If you want to use audio currently, you'll need to make use of Bluetooth audio.)
* Servo control of focus.


## What else do you need?
The current Rev 1.0 batch of boards I'm [selling on Tindie](https://www.tindie.com/products/mickmake/pi-projector/) as a plain  "as is" PCB, although will be adding kit options later depending on demand.

You will also need:

* A [DLP2000EVM module](http://www.ti.com/tool/DLPDLCR2000EVM).
* Two 2x23 pin female headers.
* One Pi male header.
* Jumper cable to connect 5v power to DLP200EVM.


## Current status
- 1.0 - Plain header to header adaptor.
- 1.x - LiPo battery support.
- 1.x - Audio output.


## Directories
`PCB/` - PDF schematics and board layout.

