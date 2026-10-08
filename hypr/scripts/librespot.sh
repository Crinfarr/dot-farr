pkill -e -i -9 librespot;
librespot \
    -j\
    --cache ~/.local/share/librespot/cache\
    --system-cache ~/.local/share/librespot/syscache\
    --device-type computer\
    -n $(cat /etc/hostname)\
    --disable-discovery >> LIBRESPOT.log
