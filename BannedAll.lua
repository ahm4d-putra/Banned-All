require 'lib.moonloader'
local sampev = require 'lib.samp.events'

function main()
    while not isSampAvailable() do
        wait(100)
    end

    sampRegisterChatCommand("banall", function()
		BantaiServer()
	end)
end

function BantaiServer()
	local totalplayers = sampGetMaxPlayerId()
	for i = 0,totalplayers, 1 do
		if sampIsPlayerConnected(i) then
			sampSendChat(string.format("/ban %d From the heave  ", i))
		end
	end
    print(string.format("Current Players : %d", totalplayers))
end