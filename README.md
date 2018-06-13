# busylight_mac

Tools to get the Kuando Busylight working with Cisco Jabber and Mac.

This project is relying on busylight node.js API by [porsager](https://github.com/porsager/busylight) and [Alfred](https://www.alfredapp.com).

## Quick start

### dependencies

* Xcode (for git)
* nodejs (with NPM)
* Alfred

### installing

* run `sudo ./install.sh` in terminal
* import `busylight_mac.alfredworkflow` to your Alfred Workflows

### usage

 You need to run `jabber_busylight.scpt`. While running, this will tell the Alfred Workflow the current presence state of Cisco Jabber. The Alfred Workflow will update the busylight color accordingly.

 You can also set shortcuts to manually set the busylight color.
