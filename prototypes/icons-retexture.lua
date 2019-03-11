local function ReplaceOreIcon(OreName)
	local OreItem = data.raw.item[OreName]
	OreItem.icon = string.gsub(OreItem.icon, "^__base__", "__better_ore_icons__")

	if OreName == "coal" then
		OreItem.dark_background_icon = string.gsub(OreItem.dark_background_icon, "^__base__", "__better_ore_icons__")
	end
	if OreName == "iron-ore" or "copper-ore" and mods["RealisticOres"] then
		OreItem.icon = string.gsub(OreItem.icon, "^__RealisticOres__/graphics/icons", "__better_ore_icons__/graphics/icons-RealisticOres")
	end
end

ReplaceOreIcon("stone")
ReplaceOreIcon("coal")
ReplaceOreIcon("iron-ore")
ReplaceOreIcon("copper-ore")
