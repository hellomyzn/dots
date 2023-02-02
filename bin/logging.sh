#!/bin/bash

# color
# ref: https://qiita.com/ko1nksm/items/095bdb8f0eca6d327233
ESC=$(printf '\033') 
ESC_END="${ESC}[m"
RED="[31m"
YELLOW="[33m"
BLUE="[34m"

WARNING="${ESC}${RED}[WARNING]${ESC_END} : "
SUCCESS="${ESC}${BLUE}[INFO]${ESC_END}    : "
INFO="${ESC}${YELLOW}[INFO]${ESC_END}    : "
CANCEL="${ESC}${YELLOW}[INFO]${ESC_END}    : "
