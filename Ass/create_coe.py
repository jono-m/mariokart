def create_coe(filename):
  bmp_file = open(filename)
  coe_file = open(filename.split('.')[0] + '.coe', 'w')
  coe_file.write('memory_initialization_radix=16;\n' +
      'memory_initialization_vector=\n')
  bmp_file.seek(10)
  offset = bmpno_to_int(bmp_file.read(4))
  bmp_file.seek(offset)
  bytes = bmp_file.read()

  byteno = 0
  pixels_written = 0
  while (byteno + 5 < len(bytes)):
    total = 0
    blue = (int(bytes[byteno].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+1].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+2].encode('hex'), 16) >> 5) << 5
    total1 = hex(red + blue + green)[2:]
    blue = (int(bytes[byteno+3].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+4].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+5].encode('hex'), 16) >> 5) << 5
    total2 = hex(red + blue + green)[2:]
    if(len(total1) == 1):
      total1 = '0' + total1
    if(len(total2) == 1):
      total2 = '0' + total2
    total = total1 + total2
    byteno = byteno + 6
    if(byteno + 2 < len(bytes)):
      coe_file.write(total + ',')
    else:
      coe_file.write(total + ';')
    pixels_written = pixels_written + 2
  coe_file.close()
  bmp_file.close()
  print pixels_written

def bmpno_to_int(bmpstring):
  return int(bmpstring[::-1].encode('hex'), 16)
