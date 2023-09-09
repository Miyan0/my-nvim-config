print("root init.lua loaded")
require("miyano.core")
require("miyano.lazy")

return { -- this table overrides highlights in all themes
	Normal = { bg = "#000000" },
}
