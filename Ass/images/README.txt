How to prepare a new image asset (8-bit RRRGGGBB BMP):

1) Open image "[X]" in MSPaint
2) Save as 256-color bitmap "[X]_8.bmp"
3) Open "X_8.bmp" in MSPaint
4) Save as 24-bit bitmap "[X]_24.bmp"
5) Run create_hex(FILE), where FILE is "[PATH]/[X]_24.bmp"
6) The produced .hex file can be put onto the SD card using HxD.