local richness = settings.startup["blood_richness_multiplier"].value

-- Adding smelting recipes here in data-updates because Krastorio multiplies these recipes by 5 if in data.lua

data:extend({
-- Small blood crystal smelting
  {
    type = "recipe",
    name = "blood-crystal-small-smelting",
    order = "a[blood]-1",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "smelting",
    energy_required = 2,
    enabled = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-small", amount = 1 },
    },
    results =
    {
      { type = "item", name = "stone", probability = 0.5, amount = 1 * richness },
      { type = "item", name = "coal", probability = 0.75, amount = 1 * richness },
      { type = "item", name = "iron-ore", probability = 0.75, amount = 1 * richness },
      { type = "item", name = "copper-ore", probability = 0.75, amount = 1 * richness },
    },
    icon = "__RichBlood__/graphics/icons/blood-crystal-small.png",
    icon_size = 64,
  },

-- Medium blood crystal smelting
  {
    type = "recipe",
    name = "blood-crystal-medium-smelting",
    order = "a[blood]-2",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "smelting",
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-medium", amount = 1 },
    },
    results =
    {
      { type = "item", name = "stone", probability = 0.6, amount = 2 * richness },
      { type = "item", name = "coal", probability = 0.80, amount = 2 * richness },
      { type = "item", name = "iron-ore", probability = 0.85, amount = 2 * richness },
      { type = "item", name = "copper-ore", probability = 0.85, amount = 2 * richness },
      { type = "item", name = "raw-rare-metals", probability = 0.05, amount = 2 * richness },
    },
    icon = "__RichBlood__/graphics/icons/blood-crystal-medium.png",
    icon_size = 64,
  },

-- Big blood crystal smelting
  {
    type = "recipe",
    name = "blood-crystal-big-smelting",
    order = "a[blood]-3",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "smelting",
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-big", amount = 1 },
    },
    results =
    {
      { type = "item", name = "iron-ore", probability = 0.95, amount = 4 * richness },
      { type = "item", name = "copper-ore", probability = 0.95, amount = 4 * richness },
      { type = "item", name = "raw-rare-metals", probability = 0.25, amount = 4 * richness },
      { type = "item", name = "uranium-ore", probability = 0.25, amount = 4 * richness },
    },
    icon = "__RichBlood__/graphics/icons/blood-crystal-big.png",
    icon_size = 64,
  },
})

-- Allow Greenhouse to accept 2 fluids    
data.raw["assembling-machine"]["kr-greenhouse"]["fluid_boxes"] = data.raw["assembling-machine"]["kr-bio-lab"]["fluid_boxes"]

-- Add fluid boxes to Blood centrifuge
data.raw["assembling-machine"]["blood-centrifuge"]["fluid_boxes"] =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      }
    }

if not mods["space-exploration"] then
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "raw-imersite", probability = 0.20, amount = 4 * richness })
end


-- BZ mods
if mods["bzaluminum"] then
  table.insert(data.raw.recipe["blood-crystal-small-smelting"].results, { type = "item", name = "aluminum-ore", probability = 0.75, amount = 1 * richness })
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "aluminum-ore", probability = 0.85, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "aluminum-ore", probability = 0.95, amount = 4 * richness })
end

if mods["bzlead"] then
  table.insert(data.raw.recipe["blood-crystal-small-smelting"].results, { type = "item", name = "lead-ore", probability = 0.75, amount = 1 * richness })
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "lead-ore", probability = 0.85, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "lead-ore", probability = 0.95, amount = 4 * richness })
end

if mods["bzcarbon"] then
  table.insert(data.raw.recipe["blood-crystal-small-smelting"].results, { type = "item", name = "flake-graphite", probability = 0.10, amount = 1 * richness })
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "flake-graphite", probability = 0.20, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "flake-graphite", probability = 0.40, amount = 4 * richness })
end

if mods["bzzirconium"] then
  table.insert(data.raw.recipe["blood-crystal-small-smelting"].results, { type = "item", name = "zircon", probability = 0.20, amount = 1 * richness })
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "zircon", probability = 0.30, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "zircon", probability = 0.50, amount = 4 * richness })
end

if mods["bztungsten"] then
  table.insert(data.raw.recipe["blood-crystal-small-smelting"].results, { type = "item", name = "tungsten-ore", probability = 0.10, amount = 1 * richness })
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "tungsten-ore", probability = 0.20, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "tungsten-ore", probability = 0.40, amount = 4 * richness })
end

if mods["bztitanium"] then
  table.insert(data.raw.recipe["blood-crystal-medium-smelting"].results, { type = "item", name = "titanium-ore", probability = 0.10, amount = 2 * richness })
  table.insert(data.raw.recipe["blood-crystal-big-smelting"].results, { type = "item", name = "titanium-ore", probability = 0.25, amount = 4 * richness })
end
