set powerOptions to {"Sleep", "Restart", "Shut Down"}

set chosenOption to choose from list powerOptions Â
	with title "Power Menu" with prompt Â
	"Select an action:" default items {"Shut Down"} Â
	OK button name Â
	"Execute" cancel button name "Cancel"

if chosenOption is not false then
	set chosenAction to item 1 of chosenOption
	
	if chosenAction is "Shut Down" then
		tell application "Finder" to shut down
	else if chosenAction is "Restart" then
		tell application "Finder" to restart
	else if chosenAction is "Sleep" then
		tell application "Finder" to sleep
	end if
end if