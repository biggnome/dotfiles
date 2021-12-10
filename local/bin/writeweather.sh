#!/bin/bash

#SYM=$(echo curl -s "wttr.in?format=%C")$SYM
TMP=$(curl -s "wttr.in/?format=%t")$TMP

case $(curl -s "wttr.in?format=%C") in
    Clear)                  SYM=" "    ;;
    Cloudy)                 SYM="摒"    ;;
    Fog)                    SYM=" "    ;;
    HeavyRain)              SYM=" "    ;;
    HeavyShowers)           SYM=" "    ;;
    HeavySnow)              SYM=" "    ;;
    HeavySnowShowers)       SYM=" "    ;;
    LightRain)              SYM=" "    ;;
    LightShowers)           SYM=" "    ;;
    LightSnow)              SYM=" "    ;;
    LightSnowShowers)       SYM=" "    ;;
    PartlyCloudy)           SYM=" "    ;;
    Sunny)                  SYM=" "    ;;
    ThunderyHeavyRain)      SYM=" "    ;;
    ThunderyShowers)        SYM=" "    ;;
    ThunderySnowShowers)    SYM=" "    ;;
    VeryCloudy)             SYM=" "    ;;
    *)                      SYM=" "    ;;
esac

#WEA=$(echo "$SYMB $TMP")$WEA
echo "$SYM$TMP" | tr -d '+' > /home/sandy/.cache/weather
