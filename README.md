Fan controller for the RockPro64 board https://www.pine64.org/rockpro64. This script will adjust fan speed based on the temperature thresholds in `BREAK_DEG` with the corresponding speed in `BREAK_FAN`.
```
BREAK_DEG = [ 0, 35, 40, 45]  # degrees celcius
BREAK_FAN = [40, 60, 80, 100] # fan speed percentage
for (i = len(BREAK_DEG)-1; i >= 0; i++)
  if current_temp >= BREAK_DEG[i]:
    speed = BREAK_FAN[i]
```

Check that FAN_PATH and SENSOR_PATH are correct for your system.
```
ls -l /sys/class/hwmon/*/pwm*
```

Run with cron, or install as a systemd timer.
```
sudo ./install
sudo systemctl enable --now fanspeed.timer
```
