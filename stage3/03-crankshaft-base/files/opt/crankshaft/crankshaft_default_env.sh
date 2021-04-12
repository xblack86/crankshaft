### Hardware ###
# The hardware pins can be completly disabled with the global flag.

# Global Flag (enables / disables gpio usage excluding device connected
# trigger gpio and ignition based shutdown!)
ENABLE_GPIO=0

# Possible used gpio's by hifiberry dac's depending on model:
# For more info visit the hifiberry homepage! To prevent from bugs don't use them!
#
# GPIO 4,5,6,16,18,19,20,21,27,28,29,30,31

# Generally used GPIO's
# Used for HAT modules - Never use it!
# GPIO 27,28

# GPIO Setup
DEV_PIN=0
INVERT_PIN=0
X11_PIN=0

# Device connected gpio (device connected 1 / else 0)
# Note: this gpio depends NOT on ENABLE_GPIO!!!
# To disable set to 0
ANDROID_PIN=0

# GPIO Trigger for Rearcam
# GPIO wich triggers enabling Rearcam Mode of RPICam
# To disable set to 0
REARCAM_PIN=0

# GPIO Trigger for Day/Night
# GPIO wich triggers Day (open gpio)/Night (closed to gnd) of GUI
# To disable set to 0
# If enabled it overrides lightsensor!
DAYNIGHT_PIN=0

### Maintenance / Initial Setup ###
# Start Crankshaft in dev mode to get network, shell and ssh access
# openauto won't be started automatically
DEV_MODE=0
# Start openauto in dev mode if enabled
DEV_MODE_APP=0

### Debugging ###
# Start Crankshaft in debug mode to get network, shell and ssh access
# System will do a normal start in ro mode
DEBUG_MODE=0

### OpenAuto ###
# Start OpenAuto in X11 or EGL
# By default, EGL, but if you can't get it to work, do X11
START_X11=1

### Screen ###
# Brightness related stuff
# brightness file (default for rpi display: /sys/class/backlight/rpi_backlight/brightness)
BRIGHTNESS_FILE=/sys/class/backlight/rpi_backlight/brightness

# brightness values
BR_MIN=90
BR_MAX=255
BR_STEP=25
BR_DAY=255
BR_NIGHT=90

# Custom brightness control
# Note: this command is called after every brightness change - can slow down for example the brightness
# slider depending on execution speed - the process is called with "&" so call is not waiting for exit!
# Sample call which will be executed on request: "CUSTOM_BRIGHTNESS_COMMAND brightnessvalue &"
#
# Note: To allow backup and restore your command must be located on /boot/crankshaft/custom/
# otherwise it will not be transfered during updates!
#
# To disable leave empty
CUSTOM_BRIGHTNESS_COMMAND=/opt/condor/brightness

# Flip the screen 180°
FLIP_SCREEN=0

### Audio ###
# If stored vol is lower than this set to this value
STARTUP_VOL_MIN=30
# If stored vol is greater than this limit to this value
STARTUP_VOL_MAX=100

###  Power Mgmt Related Stuff ###
# Timeout display after disconnect or after boot without connected device
DISCONNECTION_SCREEN_POWEROFF_SECS=120
# Disable Timer
DISCONNECTION_SCREEN_POWEROFF_DISABLE=0
# Use screensaver (bg+clock) instead of display off
SCREEN_POWEROFF_OVERRIDE=0

# Timeout shutdown after disconnect or after boot without connected device
#
# Note: on first boot timeout is set to 300 seconds - after first start
# this value is used
DISCONNECTION_POWEROFF_MINS=60
# Disable Timer
DISCONNECTION_POWEROFF_DISABLE=0

### Wifi Setup ###
# Your country code like EN,DE,FR,UK etc.
WIFI_COUNTRY=UK

# Wifi client mode (use this entry for home/work wifi - not for phone's hotspot)
# If your SSID or password contains special chars or spaces make sure using quotation marks ="SSID" / ="password"
WIFI_SSID="EMAVAP"
WIFI_PSK="h5d71gy7"
# Optinal 2nd config to access to phone's hotspot
# Note: if second config is configured system will use first connectable wifi during boot
WIFI2_SSID="EMAVAP-workshop"
WIFI2_PSK="h5d71gy7"

# Force recreate wpa_supplicant.conf during boot after wifi credentials have changed by user (default 0 | update 1)
WIFI_UPDATE_CONFIG=0

# Hotspot (if enabled the wifi client is disabled and a hotspot is opened)
# Hotspot has now a default password (1234567890) -> changeable in /etc/hostapd/hostapd.conf if really needed!
ENABLE_HOTSPOT=1

### RPi Camera Module ###
# Overlay settings
RPICAM_X=100
RPICAM_Y=52
RPICAM_WIDTH=590
RPICAM_HEIGTH=366
RPICAM_HFLIP=0
RPICAM_VFLIP=0
RPICAM_ROTATION=0
RPICAM_FPS=24
RPICAM_AWB=auto
RPICAM_EXP=auto
### Dashcam realted stuff ###
# Time for a recording segment
RPICAM_LOOPTIME=300
# Max archived recording files / oldest will be removed if newer is created
RPICAM_LOOPCOUNT=3
# Start recording on system startup (0|1)
RPICAM_AUTORECORDING=0
# Res: 720/1080 (default:720)
RPICAM_RESOLUTION=720
# Don't manually edit this values (use gui)
RPICAM_ZOOM=0
RPICAM_YCORRECTION=0

# USB Rearcam ###
# Use usb cam instead of rpi cam module for rearcam
USBCAM_USE=0
# Overlay settings
USBCAM_ROTATION=0
USBCAM_HFLIP=0
USBCAM_VFLIP=0
# Ignore all and use this custom params
# Only for special setups
USBCAM_CUSTOM_PARAMS=

# RTC Related Settings ###
# Enables day/night switch by rtc - don't change manually!
# Use command 'crankshaft rtc xxx' in shell!
RTC_DAYNIGHT=0

# Day / Night (only working with rtc enabled) - don't change manually!
# Use command 'crankshaft timers daynight xx xx' in shell!
RTC_DAY_START=8
RTC_NIGHT_START=18

# Ignition Based Shutdown
# This pin must be low to keep system running. If high for > IGNITION-DELAY (seconds)
# system will do a shutdown
# Note: this gpio depends NOT on ENABLE_GPIO!!!
# To disable set to 0
IGNITION_PIN=0
# Time to wait until shutting down (seconds)
IGNITION_DELAY=60

# Enable experimental bluetooth stuff
# don't use - only prepared for further releases!
ENABLE_BLUETOOTH=0
# Allow to autopair devices
ENABLE_PAIRABLE=0
# Use external adapter not builtin
EXTERNAL_BLUETOOTH=0

# System updates
ALLOW_USB_FLASH=1

# LightSensor
LIGHTSENSOR_TYPE='none' # Allowed Values TSL2561 TSL2591
# the address of TSL2561/TSL2591 can be
# 0x29, 0x39 or 0x49
TSL_I2C_BUS=1
TSL_ADDR=0x29

# Auto brightness control based on tsl2561 light sensor
# Check interval sensor 5,10,15,20,25,30
TSL2561_CHECK_INTERVAL=10
# Switch to night on this level or lower (0 = disabled / 1-5)
TSL2561_DAYNIGHT_ON_STEP=2
# Switch levels for brightness sensor in lux
LUX_LEVEL_1=5
LUX_LEVEL_2=20
LUX_LEVEL_3=100
LUX_LEVEL_4=200
LUX_LEVEL_5=500
# Set this display brightness by switch levels
DISP_BRIGHTNESS_1=50
DISP_BRIGHTNESS_2=90
DISP_BRIGHTNESS_3=150
DISP_BRIGHTNESS_4=210
DISP_BRIGHTNESS_5=255
