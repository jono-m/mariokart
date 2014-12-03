def create_hex(filename):
  bmp_file = open(filename)
  coe_file = open(filename.split('.')[0] + '.hex', 'w')
  bmp_file.seek(10)
  offset = bmpno_to_int(bmp_file.read(4))
  bmp_file.seek(offset)
  bytes = bmp_file.read()

  byteno = 0
  pixels_written = 0
  while (byteno + 11 < len(bytes)):
    total = 0
    blue = (int(bytes[byteno].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+1].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+2].encode('hex'), 16) >> 5) << 5
    total1 = hex(red + blue + green)[2:]
    blue = (int(bytes[byteno+3].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+4].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+5].encode('hex'), 16) >> 5) << 5
    total2 = hex(red + blue + green)[2:]
    blue = (int(bytes[byteno+6].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+7].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+8].encode('hex'), 16) >> 5) << 5
    total3 = hex(red + blue + green)[2:]
    blue = (int(bytes[byteno+9].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+10].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+11].encode('hex'), 16) >> 5) << 5
    total4 = hex(red + blue + green)[2:]
    if(len(total1) == 1):
      total1 = '0' + total1
    if(len(total2) == 1):
      total2 = '0' + total2
    if(len(total3) == 1):
      total3 = '0' + total3
    if(len(total4) == 1):
      total4 = '0' + total4
    total = total1 + total2 + total3 + total4
    byteno = byteno + 12
    coe_file.write(total)
    pixels_written = pixels_written + 4
  coe_file.close()
  bmp_file.close()
  print pixels_written

def bmpno_to_int(bmpstring):
  return int(bmpstring[::-1].encode('hex'), 16)


create_hex('C:/Users/JMM/Documents/GitHub/mariokart/Ass/images/timer/timer_24.bmp')