# convert from .png to .jpg
time ls ../shellgei160/qdata/2/img/*.png | sed 's/\.png$//' | xargs -I@ convert @.png @.jpg

time ls ../shellgei160/qdata/2/img/*.png | sed 's/\.png$//' | xargs -P$(nproc) -I@ convert @.png @.jpg

