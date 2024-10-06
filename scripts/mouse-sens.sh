#!/bin/bash

# Ajusta el valor de sensibilidad deseado
SENSITIVITY_VALUE=-1

# Lista todos los dispositivos de entrada
devices=$(xinput list --id-only)

# Itera sobre cada dispositivo y ajusta la sensibilidad
for device in $devices; do
  # Ajusta la propiedad de sensibilidad
  xinput set-prop "$device" "libinput Accel Speed" "$SENSITIVITY_VALUE"
done

