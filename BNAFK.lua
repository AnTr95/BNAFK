local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_BN_WHISPER")
f:SetScript("OnEvent", function(self, event, ...)
	local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, presenceID = ...
	if UnitIsAFK("player") then
		BNSendWhisper(presenceID, "is currently AFK.")
	end
end)