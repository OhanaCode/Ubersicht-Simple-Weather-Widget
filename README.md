# Übersicht (Overview) simple weather
![with-coffee](https://img.shields.io/badge/made%20with-%E2%98%95%EF%B8%8F%20coffee-yellow.svg) <br/>
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
<br/>Using Open Weather API

![Screenshot](/screenshot-2.png)

Simple Weather [Übersicht](http://tracesof.net/uebersicht/) displays the current temperature and conditions in the bottom left corner of the desktop. The location is (geolcated) automatically set to the location of the computer.

## Installation

1. Download [Übersicht](http://tracesof.net/uebersicht/)
2. Copy `simple-weather.widget` to your widgets folder.
3. Sign up to [Openweather API](https://openweathermap.org/appid) and add the obtained api-key in `iwn.coffee`.

## Customization

* The temperature unit can be changed from °C to °F by changing `unit: 'c'` to `unit: 'f'` in `iwn.coffee`.
* A small icon shows the Beaufort number if it is 3 (gentle breeze) or above. This can be deactivated by changing `windscale: 'yes'` to `windscale: 'no'` in `iwn.coffee`.
* The widgets updates every 5 minutes. This can be changed by changing `refreshFrequency: '5min'` in `iwn.coffee`. The time is given in minutes.
* The language of the widget can be changed by replacing `language: 'en'` in `iwn.coffee` with the respective language code. A list of the supported languages and the corresponding codes can be found [here](https://openweathermap.org/current#multi).

## Credit & Licences
OhanaCode updated from the awesome work by those below. 
IWN by aefrh https://github.com/aefrh/iwn-widget <br/>
The design of IWN is heavily inspired by the [Weather Now Widget](https://github.com/briandconnelly/weathernow-widget) by [Brian Connelly](https://github.com/briandconnelly)<br/>
The code is by me and licenced under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)<br/>
The [included icons](https://github.com/erikflowers/weather-icons) are by [Erik Flowers](https://github.com/erikflowers) and licenced under [SIL OFL 1.1](https://opensource.org/licenses/OFL-1.1)<br/>
The data provided by the Openweather API is licenced under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)
