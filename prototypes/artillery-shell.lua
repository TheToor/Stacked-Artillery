-- Names
local orginalEntityType = "artillery-shell"
local fiveXShellName = "5x-" .. orginalEntityType
local fiftyXShellName = "50x-" .. orginalEntityType

-- Items
local fiveXShell = table.deepcopy(data.raw["ammo"][orginalEntityType])
fiveXShell.name = fiveXShellName
fiveXShell.order = "d[artillery]-d[5x-artillery]"
fiveXShell.icon = "__Stacked-Artillery__/graphics/icons/" .. fiveXShellName .. ".png"

local fiftyXShell = table.deepcopy(data.raw["ammo"][orginalEntityType])
fiftyXShell.name = fiftyXShellName
fiftyXShell.icon = "__Stacked-Artillery__/graphics/icons/" .. fiftyXShellName .. ".png"
fiftyXShell.order = "d[artillery]-d[5x-artillery]-d[50x-artillery]"

-- Recipies
local recipeArtilleryToFiveX = table.deepcopy(data.raw["recipe"][orginalEntityType])
recipeArtilleryToFiveX.enabled = false
recipeArtilleryToFiveX.name = fiveXShell.name
recipeArtilleryToFiveX.icon = fiveXShell.icon
recipeArtilleryToFiveX.icon_size = 64
recipeArtilleryToFiveX.icon_mipmaps = 4
recipeArtilleryToFiveX.ingredients = {
	{ orginalEntityType, 5 }
}
recipeArtilleryToFiveX.result = fiveXShell.name
recipeArtilleryToFiveX.energy_required = 5
recipeArtilleryToFiveX.order = "artillery-shell-5"

local recipeFiveXArtilleryToArtillery = table.deepcopy(recipeArtilleryToFiveX)
recipeFiveXArtilleryToArtillery.name = "unpack-" .. fiveXShell.name
recipeFiveXArtilleryToArtillery.icon = "__Stacked-Artillery__/graphics/icons/unpack-" .. fiveXShellName .. ".png"
recipeFiveXArtilleryToArtillery.ingredients = {
	{ fiveXShellName, 1 }
}
recipeFiveXArtilleryToArtillery.results = {
	{ type = "item", name = orginalEntityType, amount = 5 }
}
recipeFiveXArtilleryToArtillery.energy_required = 1
recipeFiveXArtilleryToArtillery.order = "artillery-shell-u-5"


local recipeFiveXArtilleryToFiftyX = table.deepcopy(recipeArtilleryToFiveX)
recipeFiveXArtilleryToFiftyX.name = fiftyXShell.name
recipeFiveXArtilleryToFiftyX.icon = fiftyXShell.icon
recipeFiveXArtilleryToFiftyX.ingredients = {
	{ fiveXShell.name, 10 }
}
recipeFiveXArtilleryToFiftyX.result = fiftyXShell.name
recipeFiveXArtilleryToFiftyX.energy_required = 10
recipeFiveXArtilleryToFiftyX.order = "artillery-shell-50"

local recipeFiftyXArtilleryToFiveX = table.deepcopy(recipeArtilleryToFiveX)
recipeFiftyXArtilleryToFiveX.name = "unpack-" .. fiftyXShell.name
recipeFiftyXArtilleryToFiveX.icon = "__Stacked-Artillery__/graphics/icons/unpack-" .. fiftyXShell.name .. ".png"
recipeFiftyXArtilleryToFiveX.ingredients = {
	{ fiftyXShell.name, 1 }
}
recipeFiftyXArtilleryToFiveX.results = {
	{ type = "item", name = fiveXShell.name, amount = 10 }
}
recipeFiftyXArtilleryToFiveX.energy_required = 10
recipeFiftyXArtilleryToFiveX.order = "artillery-shell-u-50"


data:extend{fiveXShell, fiftyXShell, recipeArtilleryToFiveX, recipeFiveXArtilleryToArtillery, recipeFiveXArtilleryToFiftyX, recipeFiftyXArtilleryToFiveX}