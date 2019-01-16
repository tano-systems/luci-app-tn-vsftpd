--[[
LuCI - Lua Configuration Interface

Copyright 2016 Weijie Gao <hackpascal@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--

m = Map("vsftpd", translate("Log Settings"))

sl = m:section(NamedSection, "log", "log", translate("Log Settings"))

o = sl:option(ListValue, "mode",
	translate("Enable logging"))

o:value("disabled", translate("disable"))
o:value("file",     translate("to file"))
o:value("syslog",   translate("to syslog"))
o.default = "file"

function o.cfgvalue(self, section)
	local syslog = self.map.uci:get_bool("vsftpd", section, "syslog")
	local file   = self.map.uci:get("vsftpd", section, "file")

	if syslog and syslog == true then
		return "syslog"
	elseif file and file ~= "" then
		return "file"
	else
		return "disabled"
	end
end

function o.write(self, section, value)
	ListValue.write(self, section, value)
	if value == "file" then
		self.map.uci:set("vsftpd", section, "syslog", false)
		self.map.uci:set("vsftpd", section, "xferlog", true)
	elseif value == "syslog" then
		self.map.uci:set("vsftpd", section, "syslog", true)
		self.map.uci:set("vsftpd", section, "xferlog", true)
	else
		self.map.uci:set("vsftpd", section, "syslog", false)
		self.map.uci:set("vsftpd", section, "xferlog", false)
		self.map.uci:set("vsftpd", section, "file", "")
	end
end

o = sl:option(Value, "file", translate("Log file"))
o.default = "/var/log/vsftpd.log"
o.rmempty = true
o:depends("mode", "file")

return m
