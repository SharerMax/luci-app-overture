m = Map("overture", "Overture", "Overture Basic Setting")
s = m:section(TypedSection, "global", "")
s.anonymous = true
s.addremove = false

-- Enable
enable = s:option(Flag, "enable", "Enable")

-- Bind Port
bindPort = s:option(Value, "port", "Bind Port")
bindPort.datatype = "port"
bindPort.placeholder = 7053
bindPort.default = 7053

-- Only Primary DNS
only = s:option(Flag, "onlyprimarydns", "Only Primary DNS")

-- IPv6 Use Alternative DNS
only = s:option(Flag, "ipv6usealternativedns", "IPv6 Use Alternative DNS")

-- Alternative DNS Concurrent
concurrent = s:option(Flag, "alternativednsconcurrent", "Alternative DNS Concurrent")

-- When Primary DNS Answer None Use
fallback = s:option(ListValue, "fallback", "When Primary DNS Answer None Use")
fallback:value("0", "Primary DNS")
fallback:value("1", "Alternative DNS")
fallback.default = 0

-- IP Network File
primaryIPPath = s:option(Value, "primaryippath", "Primary DNS IP Network File")
primaryIPPath.datatype = "file"
alternativeIPPath = s:option(Value, "alternativeippath", "Alternative DNS IP Network File")
alternativeIPPath.datatype = "file"

-- Domain File
domainfinder = s:option(ListValue, "domainfinder", "Domain Finder")
domainfinder:value("0", "full-list")
domainfinder:value("1", "full-map")
domainfinder:value("2", "regex-list")
domainfinder:value("3", "mix-list")
domainfinder:value("4", "suffix-tree")
domainfinder:value("5", "final")
domainfinder.default = 1

primaryDomainPath = s:option(Value, "primarydomainpath", "Primary DNS Domain File")
primaryDomainPath.datatype = "file"
alternativeDomainPath = s:option(Value, "alternativedomainpath", "Alternative DNS Domain File")
alternativeDomainPath.datatype = "file"

-- Hosts File
hostfinder = s:option(ListValue, "hostfinder", "Domain Finder")
hostfinder:value("0", "full-map")
hostfinder:value("1", "regex-list")
hostfinder.default = 0

hostfilePath = s:option(Value, "hostfilepath", "Primary DNS Domain File")
hostfilePath.datatype = "file"

-- MinimumTTL
minttl = s:option(Value, "minttl", "Minimum TTL")
minttl.datatype = "uinteger"
minttl.default = 0

-- Domain TTL File
domainttlpath = s:option(Value, "domainttlpath", "Domain TTL File")
domainttlpath.datatype = "file"

-- Cache Size
cachesize = s:option(Value, "cachesize", "Cache Size")
cachesize.datatype = "uinteger"
cachesize.default = 0

-- RejectQType
rejectqtype = s:option(Value, "rejectqtype", "RejectQType")
rejectqtype.placeholder = 255
rejectqtype.default = 255

return m