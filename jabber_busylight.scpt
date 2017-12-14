set status to " "
repeat while true
	tell application "System Events"
		if exists (window "Cisco Jabber" of process "Cisco Jabber") then
			tell process "Cisco Jabber"
				set status_new to get value of text field 1 of window "Cisco Jabber"
			end tell
			delay 2
			
			if status is not equal to status_new then
				set status to status_new
				tell application "Alfred 3" to run trigger "jabberstate" in workflow "de.ufz.mac.busylight" with argument status
			end if
		end if
	end tell
end repeat