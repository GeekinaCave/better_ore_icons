local function getNewTexturePath(oldTexturePath)
	 if RealisticOresicons_enabled == true then
		local newTexturePath,changes = string.gsub(oldTexturePath, "^__base__/graphics/icons", "__better_ore_icons__/graphics/icons-RealisticOres")
		return newTexturePath
	 else
		local newTexturePath,changes = string.gsub(oldTexturePath, "^__base__", "__better_ore_icons__")
		return newTexturePath
	 end
end

local function changeOreIcons(oreName)
	local oreItem = data.raw.item[oreName .. "-ore"]
	oreItem.icon = getNewTexturePath(oreItem.icon)
end

changeOreIcons("iron")
changeOreIcons("copper")


local oreItem = data.raw.item["coal"]
oreItem.icon = getNewTexturePath(oreItem.icon)
oreItem.dark_background_icon = getNewTexturePath(oreItem.dark_background_icon)

local oreItem = data.raw.item["stone"]
oreItem.icon = getNewTexturePath(oreItem.icon)

