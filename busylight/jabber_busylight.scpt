set status to " "
if application "Cisco Jabber" is running then
	tell application "System Events"
		if exists (window "Cisco Jabber" of process "Cisco Jabber") then
			tell process "Cisco Jabber"
				set status_new to get value of text field 1 of window "Cisco Jabber"
				return status_new
			end tell
		end if
	end tell
end if
