def create_hex(filename):
  bmp_file = open(filename)
  coe_file = open(filename.split('.')[0] + '.hex', 'w')
  offset = 44
  bmp_file.seek(offset)
  bytes = bmp_file.read()

  byteno = 0
  samples_written = 0
  while (byteno < len(bytes)):
    sample = (int(bytes[byteno].encode('hex'), 16));
    total = hex(sample)[2:];
    coe_file.write(total)
    byteno = byteno + 1
    samples_written = samples_written + 1
  coe_file.close()
  bmp_file.close()
  print samples_written

create_hex('C:/Users/JMM/Documents/GitHub/mariokart/Ass/sounds/menu_music.wav')