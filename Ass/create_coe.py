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
  while (byteno + 2 < len(bytes)):
    blue = (int(bytes[byteno].encode('hex'), 16) >> 6)
    green = (int(bytes[byteno+1].encode('hex'), 16) >> 5) << 2
    red = (int(bytes[byteno+2].encode('hex'), 16) >> 5) << 5
    total = hex(red + blue + green)[2:]
    if(len(total) == 1)
      total = '0' + total
    byteno = byteno + 3
    if(byteno + 2 < len(bytes)):
      coe_file.write(total + ',')
    else:
      coe_file.write(total + ';')
    pixels_written = pixels_written + 1
  coe_file.close()
  bmp_file.close()
  print pixels_written

def bmpno_to_int(bmpstring):
  return int(bmpstring[::-1].encode('hex'), 16)
