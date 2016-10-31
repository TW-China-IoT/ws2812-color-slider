# WS2812 color picker
This is an easy tool to help adjust WS2812 color

httpserver comes from [nodemcu-httpserver](https://github.com/marcoskirsch/nodemcu-httpserver)

# How to use
Change ssid settings in init.lua, so you can connect to your wifi. You will visit your nodemcu using this wifi network.

      wifiConfig.stationPointConfig.ssid = "Internet"        -- Name of the WiFi network you want to join
      wifiConfig.stationPointConfig.pwd =  "password"                -- Password for the WiFi network

Upload server files using [nodemcu-uploader](https://github.com/kmpm/nodemcu-uploader).
The easiest is to use GNU Make with the bundled Makefile. Open the Makefile and modify the
user configuration to point to your nodemcu-uploader script and your serial port.
Type the following to upload the server code, init.lua (which you may want to modify),
and some example files:

      make upload_all

If you only want to upload the server code, then type:

      make upload_server

And if you only want to upload the server files:

      make upload_http

Restart the server. This will execute init.lua which will compile the server code.

An IP address will print out in terminal and you can visit this IP address and see the index page.