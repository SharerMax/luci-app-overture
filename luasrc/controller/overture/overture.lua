module("luci.controller.overture.overture", package.seeall)

function index() 
    if not nixio.fs.access("/usr/bin/overture") then
		return
    end
    entry({"admin", "services", "overture"},alias("admin", "services", "overture", "base"), _("Overture")).dependent = true
    entry({"admin", "services", "overture", "base"},cbi("overture/base")).leaf = true

end