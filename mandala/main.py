import sys
from PIL import Image, ImageDraw

image = Image.new('RGBA', (800, 600), 'white')

draw = ImageDraw.Draw(image)

draw.ellipse([(50, 25), (750, 600)], fill='white', outline='black', width=10)

draw.rectangle([(170, 525), (625, 100)], fill='white', outline='black', width=10)

draw.rectangle([(220, 475), (575, 150)], fill='white', outline='black', width=10)

draw.polygon(((250, 105), (400, 30), (550, 105)), fill="white", outline='black', width=10)

draw.polygon(((175, 150), (175, 450), (55, 290)), fill="white", outline='black', width=10)

draw.polygon(((250, 520), (400, 600), (550, 520)), fill="white", outline='black', width=10)

draw.polygon(((620, 150), (620, 450), (745, 290)), fill="white", outline='black', width=10)

draw.polygon(((400, 150), (220, 290), (400, 475),(575, 290)), fill="white", outline='black', width=10)

draw.polygon(((400, 220), (330, 290), (400, 355),(460, 290)), fill="white", outline='black', width=10)

image.save('./mandala/mandala.png')
