# as1
mogrify -format jpg ../shellgei160/qdata/2/img/*png

# as2
# {} is file_name
# {} is file_name without extention(.png)
parallel 'convert {} {.}.jpg' ::: ../shellgei160/qdata/2/img/*.png
