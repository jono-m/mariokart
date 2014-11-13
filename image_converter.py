from PIL import ImageFile

fp = open("265-splash.bmp", "rb")

p = ImageFile.Parser()

while 1:
    s = fp.read(1024)
    if not s:
        break
    p.feed(s)

im = p.close()

imf = im.filter(ImageFilter.)

im.save("copy.jpg")