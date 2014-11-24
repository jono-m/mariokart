def create_trackinfo(filename):
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
    blue = int(bytes[byteno].encode('hex'), 16)
    green = int(bytes[byteno+1].encode('hex'), 16)
    red = int(bytes[byteno+2].encode('hex'), 16)
    if(red > 200 and blue < 200):
      total1 = "01"
    elif(blue > 200 and red < 200):
      print "Hello"
      total1 = "11"
    elif(red == 0 and green == 0 and blue == 0):
      total1 = "10"
    else:
      total1 = "00"
    blue = int(bytes[byteno+3].encode('hex'), 16)
    green = int(bytes[byteno+4].encode('hex'), 16)
    red = int(bytes[byteno+5].encode('hex'), 16)
    if(red > 200 and blue < 200):
      total2 = "01"
    elif(blue > 200 and red < 200):
      total2 = "11"
    elif(red == 0 and green == 0 and blue == 0):
      total2 = "10"
    else:
      total2 = "00"
    blue = int(bytes[byteno+6].encode('hex'), 16)
    green = int(bytes[byteno+7].encode('hex'), 16)
    red = int(bytes[byteno+8].encode('hex'), 16)
    if(red > 200 and blue < 200):
      total3 = "01"
    elif(blue > 200 and red < 200):
      total3 = "11"
    elif(red == 0 and green == 0 and blue == 0):
      total3 = "10"
    else:
      total3 = "00"
    blue = int(bytes[byteno+9].encode('hex'), 16)
    green = int(bytes[byteno+10].encode('hex'), 16)
    red = int(bytes[byteno+11].encode('hex'), 16)
    if(red > 200 and blue < 200):
      total4 = "01"
    elif(blue > 200 and red < 200):
      total4 = "11"
    elif(red == 0 and green == 0 and blue == 0):
      total4 = "10"
    else:
      total4 = "00"
    total = hex(int(total1 + total2 + total3 + total4, 2))[2:]
    if(len(total) == 1):
      total = '0' + total
    byteno = byteno + 12
    coe_file.write(total)
    pixels_written = pixels_written + 4
  coe_file.close()
  bmp_file.close()
  print pixels_written

def bmpno_to_int(bmpstring):
  return int(bmpstring[::-1].encode('hex'), 16)

create_trackinfo('C:/Users/JMM/Documents/GitHub/mariokart/Ass/images/TrackInfo/trackinfo_24.bmp')