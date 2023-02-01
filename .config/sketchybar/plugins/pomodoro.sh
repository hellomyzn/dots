#!/bin/sh

pomo_start() {
    sketchybar --set pomodoro label.width=100
    t=$(($1+1))
    sketchybar -m --set pomodoro label="$t"
}

pomo_stop() {
    sketchybar --set pomodoro label.width=0
    exit 1
}


mouse_clicked() {
    # timer=$(for i in `seq 60 -1 1` ; do echo -ne "\r$i " ; sleep 1 ; done)
    timer=$(/Users/miyazonoeiji/.mpd/hoge.sh)
    
    
    sketchybar -m --set pomodoro label="$timer"
    # sketchybar -m --set pomodoro label.width=$(($Drawing+1))
    # # sketchybar -m --set pomodoro label.drawing=on
    # if [ "$DRAWING" -eq "off" ]; then
    #     sketchybar -m --set pomodoro label.drawing=on
    #     break
    # else
    #     sketchybar -m --set pomodoro label.drawing=off
    #     break
    # fi
    

    # if [ $FLAG ]; then
    #     break
    # fi

    # FLAG=true

    # while [ $FLAG = true ] 
    # do
    #     # work
    #     for i in {1..5}
    #     do
    #         t=$i
    #         sketchybar -m --set pomodoro icon="Work" \
    #                                     label="$t left"                 
    #         sleep 1
    #     done

    #     # rest
    #     for i in {1..2}
    #     do
    #         t=$i
    #         sketchybar -m --set pomodoro icon="Rest" \
    #                                     label="$t left" 
    #         sleep 1
            
    #     done
    #     sketchybar -m --set pomodoro label="Start"
    #     FLAG=false
    # done
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
esac