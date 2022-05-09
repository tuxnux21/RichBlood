-- Fix layered icons for wood recipes
local wood = data.raw.item["wood"]
local electrolyte = data.raw.fluid["electrolyte"]
local fertilizer = data.raw.item["fertilizer"]
data.raw.recipe["kr-grow-wood-with-water"].icons = {
  {icon = wood.icon, icon_size = wood.icon_size},
  {icon = electrolyte.icon, icon_size = electrolyte.icon_size, scale = 0.25, shift = {9, -10}}
  }
data.raw.recipe["kr-grow-wood-with-water"].icon_size = wood.icon_size

data.raw.recipe["kr-grow-wood-plus"].icons = {
  {icon = wood.icon, icon_size = wood.icon_size},
  {icon = fertilizer.icon, icon_size = fertilizer.icon_size, scale = 0.25, shift = {9, -10}}
  }
data.raw.recipe["kr-grow-wood-plus"].icon_size = wood.icon_size


-- Add Petroleum gas icon to K2 Biomass recipe
local petroleum_gas = data.raw.fluid["petroleum-gas"]
local biomass = data.raw.item["biomass"]
data.raw.recipe["kr-biomass-growing"].icons = {
  {icon = biomass.icon, icon_size = biomass.icon_size},
  {icon = petroleum_gas.icon, icon_size = petroleum_gas.icon_size, scale = 0.25, shift = {9, -10}}
  }

-- Allow productivity modules in recipes
for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs({"blood-crystal-small-crushing"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-crystal-medium-crushing"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-crystal-big-crushing"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-crystal-powder-liquefaction"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"spawner-egg-liquefaction"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-filtration"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-stone"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-coal"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-iron-ore"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-copper-ore"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-raw-rare-metals"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"blood-to-uranium-ore"}) do
      table.insert(v.limitation, recipe)
    end
    if not mods["space-exploration"] then
      for _, recipe in ipairs({"blood-to-raw-imersite"}) do
        table.insert(v.limitation, recipe)
      end
    end
    for _, recipe in ipairs({"quartz"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"kr-biomass-growing"}) do
      table.insert(v.limitation, recipe)
    end
    for _, recipe in ipairs({"biomass-from-blood-tissue"}) do
      table.insert(v.limitation, recipe)
    end
    if mods["bzaluminum"] then
	  for _, recipe in ipairs({"blood-to-aluminum-ore"}) do
	    table.insert(v.limitation, recipe)
	  end
	end
	if mods["bzlead"] then
	  for _, recipe in ipairs({"blood-to-lead-ore"}) do
	    table.insert(v.limitation, recipe)
	  end
    end
    if mods["bzcarbon"] then
      for _, recipe in ipairs({"blood-to-flake-graphite"}) do
        table.insert(v.limitation, recipe)
      end
    end
    if mods["bztungsten"] then
      for _, recipe in ipairs({"blood-to-tungsten-ore"}) do
        table.insert(v.limitation, recipe)
      end
    end
    if mods["bzzirconium"] then
      for _, recipe in ipairs({"blood-to-zircon"}) do
        table.insert(v.limitation, recipe)
      end
    end
    if mods["bztitanium"] then
      for _, recipe in ipairs({"blood-to-titanium-ore"}) do
        table.insert(v.limitation, recipe)
      end
    end
  end
end

-- Organization
data.raw.recipe["sand"].subgroup = "raw-material"
data.raw.recipe["kr-grow-wood-with-water"].order = "a[wood]-02"
data.raw.recipe["kr-grow-wood-plus"].order = "a[wood]-03"
data.raw.capsule["first-aid-kit"].group = "combat"
data.raw.recipe["first-aid-kit"].group = "combat"
data.raw.capsule["first-aid-kit"].subgroup = "gun"
data.raw.recipe["first-aid-kit"].subgroup = "gun"
