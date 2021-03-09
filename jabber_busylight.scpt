set status to " "
repeat while true
	tell application "System Events"
		if exists (menu bar 2 of process "Cisco Jabber") then
			set rawStatus_new to get description of every menu bar item of menu bar 2 of process "Cisco Jabber"
			set status_new to do shell script "echo \"" & rawStatus_new & "\" | awk '{print $2}'"
			delay 2
			
			if status is not equal to status_new then
				set status to status_new
				tell application "Alfred 4" to run trigger "jabberstate" in workflow "de.ufz.mac.busylight" with argument status
				-- status description:
				-- Available: presenceAvailable
				-- Away: presenceAway
				-- DnD: presenceDoNotDisturb
			end if
		end if
	end tell
end repeat