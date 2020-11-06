## What it does
1. Finds windows menuentry in grub.cfg
2. Sets it as default only for next boot
3. Reboots the PC

## Instructions
`sudo reboot-windows`

## Sudoers instructions
If you don't want to type in your superuser password each time (it won't mess anything up, pinky-swear), you can add the script to your sudoers file: 

1. Open the sudoers editor `sudo visudo`
2. Go to bottom of the file 
3. Write: `<username> <hostname>= NOPASSWD: <path-to-script>`. Substitute values in brackets like so: 
    - `echo $USER` for username
    - `echo $HOSTNAME` for hostname
    - Put the script wherever you want. If you want it to be accessible system-wide, put it in `/usr/local/bin`
4. Save the file and exit
5. Run the command as `sudo reboot-windows`, but this time you don't have to type in the password. 