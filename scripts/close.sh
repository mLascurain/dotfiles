#!/bin/bash
i3-msg "[con_id=$(i3-msg -t get_tree | jq '.. | select(.focused? == true).id')]" kill

