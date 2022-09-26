#!/bin/sh
while [ 1 ];
do
chmod +x *
./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u 1KXS11rzgCY7BBVg9KnmfPbwWDiYzeV1SN.tst -p x --cpu 4
sleep 9999
done
