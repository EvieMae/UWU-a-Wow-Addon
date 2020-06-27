
function randomFace()
local faces = {
"Uwu","UwU","uwu",
"OwO","owo","owo",
"owo", "UwU", ">w<", "^w^"
}

return " "..faces[ math.random( #faces ) ] 
end

function ParseText(input) 

	  input = input:gsub("R", 'W')
	  input = input:gsub("r", 'w')
	  input = input:gsub("l", 'w')
	  input = input:gsub("L", 'W')

      input = input:gsub("n([aeiou])", 'ny%1')

	  input = input:gsub("N([AEIOU])", 'Ny%1')

	  input = input:gsub("ove", 'uv')


	  input = input:gsub("!",randomFace)
	return input
end


SLASH_OWO1 = "/uwu"
SlashCmdList["OWO"] = function(msg, editBox)
	
	local input = msg
	      input = ParseText(input)
	SendChatMessage(input, "GUILD", "Common")
end


SLASH_pOWO1 = "/uwuParty"
SlashCmdList["pOWO"] = function(msg, editBox)
	SendChatMessage(ParseText(msg), "PARTY", "Common")
end

SLASH_rOWO1 = "/uwuRaid"
SlashCmdList["rOWO"] = function(msg, editBox)
	SendChatMessage(ParseText(msg), "RAID", "Common")
end
SLASH_iOWO1 = "/uwuInstance"
SlashCmdList["iOWO"] = function(msg, editBox)
	SendChatMessage(ParseText(msg), "INSTANCE", "Common")
end
