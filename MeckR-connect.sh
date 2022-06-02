#!/bin/bash
# exemplo de uso: ./MeckR-connect.sh IP
# query:Android Debug Bridge
_tela() { xterm -ls -bg black -fg red -fa "Luxi Mono" -fs 12 -cr white -hc white -rightbar -e ${1} ; }
for v in $(seq 100); do
    OUTPUT="$(adb connect ${1}:5555 2> /dev/null)"
   if [[ $OUTPUT = *connected* ]]; then
      echo "[!] conectado a ${1}:5555"
 sleep 1s
       _tela "adb shell" &
     sleep 3s
       _tela " scrcpy -s ${1}:5555" &
      exit 1
  fi
      echo "[$v] conectando..."
sleep 2s
done
     echo "[!] nao foi possivel se conectar"
sleep 3s && clear
    echo "[+] iniciando uma nova tentativa com os dados anteriores."
 conectar ${1}
