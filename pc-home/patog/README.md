# Instructions
Usage: `patog 'device1=stylised1' 'device2=stylised2' 'genmon-X'`  
* "device" can be retrieved with: `pactl list sinks | grep 'Name'`.  
* "stylised" can be anything you want to show in the notification (eg. "Mayonnaise")  
* (Optional) "genmon-X" identifies the genmon XFCE plugin that should be updated when the script is done. Get it by going to Panel preferences -> Items and hovering over the desired genmon plugin. 

## With genmon plugin
Create genmon plugin with command: `sh -c "head -1 ~/.local/share/patog/state.txt || echo 'Unknown'"`. Set period to `86400` (1 day).

## Example
`patog "alsa_output.usb-Burr-Brown_from_TI_USB_Audio_CODEC-00.analog-stereo=Headphones" "alsa_output.pci-0000_00_1b.0.analog-stereo=Speakers" "genmon-11"`