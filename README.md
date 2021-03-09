# busylight_mac

Tools to get the Kuando Busylight working with Cisco Jabber (verified with v12.9.4) and Mac.

This project is relying on busylight node.js API by [porsager](https://github.com/porsager/busylight) and [Alfred](https://www.alfredapp.com).

## Quick start

### dependencies

* Xcode (for git)
* nodejs (with NPM)
* Alfred

### installing

* run `sudo ./install.sh` in terminal
* import `busylight_mac.alfredworkflow` to your Alfred Workflows

###### NOTE:
This uses the tray icon to fetch the current presence status from Jabber. If it's hidden with e.g. Bartender, it still works fine, but if you remove the tray icon completely, it might not work.  

### usage

 You need to run `jabber_busylight.scpt`. While running, this will tell the Alfred Workflow the current presence state of Cisco Jabber. The Alfred Workflow will update the busylight color accordingly.

 You can also set shortcuts to manually set the busylight color.
