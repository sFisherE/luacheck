#!/usr/bin/env lua

local files={"test.lua"}

luacheck = require("luacheck/init")
local report = luacheck.check_files(files)

for i, file_report in ipairs(report) do
	print("\n\nreport",i," ",files[i])
	for k,v in pairs(file_report) do
		print(luacheck.get_message(v))
	end
end
