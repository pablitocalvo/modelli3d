#####
Quering ...
#######
/opt/arduino-1.8.11/hardware/tools/avr/bin$ ./avrdude -C ../etc/avrdude.conf -c wiring  -p m2560 -P /dev/ttyUSB0 -v 


-C <config-file>           Specify location of configuration file.

-c <programmer>            Specify programmer type.
    vedi /opt/arduino-1.8.11/hardware/board.txt  alla voce mega.menu.cpu.atmega2560.upload.protocol=wiring
    vedi https://www.youtube.com/watch?v=Jw-ZSkzd-uY

-b <baudrate>              Override RS-232 baud rate.

-i <delay>                 ISP Clock Delay [in microseconds]

-p <partno>                Required. Specify AVR device.

-P <port>                  Specify connection port.

-F                         Override invalid signature check.

-U <memtype>:r|w|v:<filename>[:format]
                             Memory operation specification.
                             Multiple -U options are allowed, each request
                             is performed in the order specified.


####
BACKUP DI TUTTO!!!

./avrdude -C ../etc/avrdude.conf -c wiring  -p m2560 -P /dev/ttyUSB0 -U eeprom:r:mkbase_eeprom.hex:i -U flash:r:mkbase_flash.hex:i

./avrdude -C ../etc/avrdude.conf -c wiring  -p m2560 -P /dev/ttyUSB0 -U lfuse:r:lfuse.hex:i -U hfuse:r:hfuse.hex:i -U efuse:r:efuse.hex:i -U lock:r:lock.hex:i -U calibration:r:calibration.hex:i -U signature:r:signature.hex:i


######
Verifica i backup

./avrdude -C ../etc/avrdude.conf -c wiring  -p m2560 -P /dev/ttyUSB0 -U eeprom:v:mkbase_eeprom.hex:i -U flash:v:mkbase_flash.hex:i

./avrdude -C ../etc/avrdude.conf -c wiring  -p m2560 -P /dev/ttyUSB0 -U lfuse:v:lfuse.hex:i -U hfuse:v:hfuse.hex:i -U efuse:v:efuse.hex:i -U lock:v:lock.hex:i -U calibration:v:calibration.hex:i -U signature:v:signature.hex:i
