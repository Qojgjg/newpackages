-- Copyright (C) 2018 XiaoShan mivm.cn

module("luci.controller.k3usb", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/k3usb") then
		return
	end

	local page = entry({"admin", "system", "k3usb"}, cbi("k3usb"), _("k3usb"), 60)
	page.dependent = true
	page.acl_depends = { "luci-app-k3usb" }
end
