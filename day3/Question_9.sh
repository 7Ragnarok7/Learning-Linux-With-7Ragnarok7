#!/bin/bash -x

ps -e -o pid,ppid,cmd,%mem,%cpu | less
