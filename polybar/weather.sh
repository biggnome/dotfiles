#!/bin/bash

TMP=$(curl -s "wttr.in/?format=%t" | tr -d F)$TMP

case $(curl -s "wttr.in?format=%C" | awk -F , '{print $1}') in
    'Clear')                                SYM=" "    ;;
    'Sunny')                                SYM=" "    ;;
    'Partly cloudy')                        SYM=" "    ;;
    'Cloudy')                               SYM="摒"    ;;
    'Overcast')                             SYM=" "    ;;
    'Mist')                                 SYM="敖"    ;;
    'Patchy rain possible')                 SYM=" "    ;;
    'Patchy snow possible')                 SYM=" "    ;;
    'Patchy sleet possible')                SYM=" "    ;;
    'Patchy freezing drizzle possible')     SYM=" "    ;;
    'Thundery outbreaks possible')          SYM=" "    ;;
    'Blowing snow')                         SYM=" "    ;;
    'Blizzard')                             SYM=" "    ;;
    'Fog')                                  SYM=" "    ;;
    'Freezing fog')                         SYM=" "    ;;
    'Patchy light drizzle')                 SYM=" "    ;;
    'Light drizzle')                        SYM=" "    ;;
    'Freezing drizzle')                     SYM=" "    ;;
    'Heavy freezing drizzle')               SYM=" "    ;;
    'Patchy light rain')                    SYM=" "    ;;
    'Light rain')                           SYM=" "    ;;
    'Moderate rain at times')               SYM=" "    ;;
    'Moderate rain')                        SYM=" "    ;;
    'Heavy rain at times')                  SYM=" "    ;;
    'Heavy rain')                           SYM=" "    ;;
    'Light freezing rain')                  SYM=" "    ;;
    'Moderate or heavy freezing rain')      SYM=" "    ;;
    'Light sleet')                          SYM=" "    ;;
    'Moderate or heavy sleet')              SYM=" "    ;;
    'Patchy light snow')                    SYM=" "    ;;
    'Light snow')                           SYM=" "    ;;
    'Patchy moderate snow')                 SYM=" "    ;;
    'Moderate snow')                        SYM=" "    ;;
    'Patchy heavy snow')                    SYM=" "    ;;
    'Heavy snow')                           SYM=" "    ;;
    'Ice pellets')                          SYM=" "    ;;
    'Light rain shower')                    SYM=" "    ;;
    'Moderate or heavy rain shower')        SYM=" "    ;;
    'Torrential rain shower')               SYM=" "    ;;
    'Light sleet showers')                  SYM=" "    ;;
    'Moderate or heavy sleet showers')      SYM=" "    ;;
    'Light snow showers')                   SYM=" "    ;;
    'Moderate or heavy snow showers')       SYM=" "    ;;
    'Patchy light rain with thunder')       SYM=" "    ;;
    'Moderate or heavy rain with thunder')  SYM=" "    ;;
    'Patchy light snow with thunder')       SYM=" "    ;;
    'Moderate or heavy snow with thunder')  SYM=" "    ;;
    *)                                      SYM=" "    ;;
esac

printf "$SYM$TMP" | tr -d '+'
