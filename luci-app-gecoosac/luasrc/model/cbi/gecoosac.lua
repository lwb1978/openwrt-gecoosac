
m = Map("gecoosac", translate("Gecoos AC"), translate("Batch management Gecoos AP,Default password:admin"))

m:section(SimpleSection).template  = "gecoosac/gecoosac_status"

s = m:section(TypedSection, "gecoosac", translate("Global Settings"))
s.addremove = false
s.anonymous = true

enable = s:option(Flag, "enabled", translate("Enabled AC"))
enable.rmempty = false

o = s:option(Value, "port", translate("Set the AC access port"))
o.placeholder = 60650
o.default     = 60650
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "upload_dir", translate("Upload dir path"), translate("The path to upload AP upgrade firmware"))
o.placeholder = "/tmp/gecoosac/upload/"
o.default     = "/tmp/gecoosac/upload/"
o.rmempty     = false

o = s:option(Value, "db_dir", translate("Database dir path"), translate("The path to store the config database"))
o.placeholder = "/etc/gecoosac/"
o.default     = "/etc/gecoosac/"
o.rmempty     = false

o = s:option(Flag, "log", translate("Enable Log"))
o.default = 1
o.rmempty = false

return m
