#!/bin/bash

case $(bsp-layout get) in
    'tall')         BSP="Tall" ;;
    'rtall')        BSP="llaT" ;;
    'wide')         BSP="Wide" ;;
    'rwide')        BSP="ediW" ;;
    'grid')         BSP="Grid" ;;
    'rgrid')        BSP="dirG" ;;
    'even')         BSP="Even" ;;
    'tiled')        BSP="BSPT" ;;
    'monocle')      BSP="Mono" ;;
    *)              BSP="????" ;;
esac

printf "$BSP"
