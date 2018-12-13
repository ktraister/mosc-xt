# MOSC XT
Manak1n's Open Source Converter (XT), v0.1

Translate the XT protocol used by the IBM Model F XT keyboard.

This is a copy of the source code posted on the [Desktority forum](https://deskthority.net/workshop-f7/xt-to-usb-project-t12597.html) by Armando L. Montanez.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Designed for the PJRC Teensy 3.1

Keyboards currently supported:
   -IBM Model F "XT" (83 key) [verified]
   -Other XT-set 1 keyboards

Microcontrollers currently supported:
   -Teensy 3.2
   -Teensy 3.1 [verified]
   -Teensy 3.0
   -Teensy++ 2.0
   -Teensy 2.0

Features:
   -6 Key rollover minimum (10 max)
   -Dual-layered function keys (toggle with NumLock)
   -Bypassing of keyboard's built-in key repeat
   -Porting to other Arduino boards is not too difficult

Known issues:
   -If you hold down both shift keys and then release them, shift stays on until you press and release it again.
   -Both shift keys map to left shift.

Version 0.1 - 01/11/2016
   -(initial release) 


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Setup
Choose either the MAIN or ALTERNATE builds. Main is standard key layout, alternate swaps the control and alt keys to better resemble modern keyboards.

Currently, only XT is supported:
http://www.classiccmp.org/cpmarchives/cpm/mirrors/www.s100computers.com/My%20System%20Pages/IBM%20Keyboard/Sockets-AT.jpg

Note: DOUBLE CHECK! Bad wiring is baaaad!
Teensy ------ Keyboard
Vin ---------- Vcc +5v
PD2 --------- Clock
PD3 --------- Data
GND -------- GND

Note: I'm trying to keep TX and RX open for development purposes.

Set up Teensyduino so you know how to compile and upload to controller.
Follow these settings in the Arduino IDE:
(Make sure you set the board to YOUR version of Teensy)
http://i.imgur.com/gTmYFb8.png

Finally, load up the .ino and then simply upload to the board if you have a Teensy 3.1.
If you have a Teensy 2.0 or 2.0++, change LED_Pin in the sketch to 11 or 6, respectively.
