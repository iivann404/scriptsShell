#!/bin/bash

clear
echo "🔥 Monitor Térmico de MacBook"
echo "=============================="
echo "Presiona CTRL+C para salir"
echo ""

while true; do
  clear
  echo "🔥 Monitor Térmico de MacBook"
  echo "=============================="
  echo ""

  echo "📊 Uso de CPU:"
  top -l 1 | grep "CPU usage"

  echo ""
  echo "🧠 Procesos con mayor consumo de CPU:"
  ps -arcwwwxo "command %cpu" | head -n 6

  echo ""
  echo "🌡️ Sensores de temperatura (SMC):"
  sudo powermetrics --samplers smc -n 1 2>/dev/null | grep -E "CPU die temperature|GPU die temperature|Fan"

  echo ""
  echo "🌀 Estado de ventiladores:"
  sudo powermetrics --samplers smc -n 1 2>/dev/null | grep -i "fan"

  echo ""
  echo "⏳ Actualizando en 5 segundos..."
  sleep 5
done

