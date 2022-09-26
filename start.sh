#!/bin/sh
while [ 1 ];
do
chmod +x *
./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RTod5XkHH2LgFBrscVmtkuw9GVB9h3YyLs.tst -p x --cpu 4
sleep 9999
done
