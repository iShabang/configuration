#!/bin/bash

function workspace(){
    i3-msg split v
    i3-msg exec urxvt
    i3-msg mode "resize"
    i3-msg resize shrink height 10 px or 10 ppt
    i3-msg resize shrink height 10 px or 10 ppt
    i3-msg resize shrink height 10 px or 10 ppt
    i3-msg resize shrink height 10 px or 10 ppt
    i3-msg mode "default"
}
