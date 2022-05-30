data:extend({
  {
    type = "technology",
    name = "blood-crystal-powder-liquefaction",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__RichBlood__/graphics/technology/blood-crystal-powder-liquefaction.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-crystal-powder-liquefaction"
      },
    },
    prerequisites = {"kr-fluids-chemistry", "kr-crusher"},
    unit = {
      count = 50,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "blood-filtration",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/blood-filtration.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-filtration"
      },
    },
    prerequisites = {"blood-crystal-powder-liquefaction"},
    unit = {
      count = 75,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "blood-electrolysis",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/blood-electrolysis.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-electrolysis"
      }
    },
    prerequisites = {"blood-crystal-powder-liquefaction"},
    unit = {
      count = 100,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-coal",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-coal.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-coal"
      },
    },
    prerequisites = {"blood-crystal-powder-liquefaction"},
    unit = {
      count = 25,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-stone",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-stone.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-stone"
      },
    },
    prerequisites = {"blood-crystal-powder-liquefaction"},
    unit = {
      count = 25,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-iron-ore",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-iron-ore.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-iron-ore"
      },
    },
    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal"},
    unit = {
      count = 50,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-copper-ore",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-copper-ore.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-copper-ore"
      },
    },
    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal"},
    unit = {
      count = 50,
      ingredients = {
        { "basic-tech-card", 1 },
        { "automation-science-pack", 1 },
      },
      time = 45
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-raw-rare-metals",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-raw-rare-metals.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-raw-rare-metals"
      },
    },
    prerequisites = {"catalytic-electrolysis-copper-ore", "catalytic-electrolysis-iron-ore"},
    unit = {
      count = 100,
      ingredients = {
        { "logistic-science-pack", 1 },
        { "automation-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 60
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "catalytic-electrolysis-uranium-ore",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-uranium-ore.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-to-uranium-ore"
      },
    },
    prerequisites = {"catalytic-electrolysis-raw-rare-metals", "uranium-processing"},
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 60
    },
  },
})


if not mods["space-exploration"] then
	data:extend({
	  {
		type = "technology",
		name = "catalytic-electrolysis-raw-imersite",
		icon_size = 256,
		icon_mipmaps = 1,
		icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-raw-imersite.png",
		effects = {
		  {
			type = "unlock-recipe",
			recipe = "blood-to-raw-imersite"
		  },
		},
		prerequisites = {"catalytic-electrolysis-uranium-ore", "kr-quarry-minerals-extraction"},
		unit = {
		  count = 400,
		  ingredients = {
			{ "automation-science-pack", 1 },
			{ "logistic-science-pack", 1 },
			{ "chemical-science-pack", 1 },
			{ "production-science-pack", 1 },
		  },
		  time = 60
		},
	  },
	})
end

data:extend({
  {
    type = "technology",
    name = "cryogenic-storage",
    icon_size = 256,
    icon_mipmaps = 1,
    icon = "__RichBlood__/graphics/technology/cryogenic-storage.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "empty-cryogenic-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-cryogenic-flask"
      },
    },
    prerequisites = {"kr-advanced-chemistry"},
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 }
      },
      time = 60
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "blood-separation",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__RichBlood__/graphics/technology/blood-separation.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "blood-centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "blood-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "biomass-from-blood-tissue"
      },
    },
    prerequisites = {"cryogenic-storage", "blood-crystal-powder-liquefaction", "kr-bio-processing"},
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 }
      },
      time = 60
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "stem-cell-biology",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__RichBlood__/graphics/technology/stem-cell-biology.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "empty-lab-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "stem-cells-from-spawner-egg"
      },
      {
        type = "unlock-recipe",
        recipe = "stem-cells-from-lab-grown-embryo"
      },
      {
        type = "unlock-recipe",
        recipe = "embryo-growing"
      },
      {
        type = "unlock-recipe",
        recipe = "lab-grown-embryo-liquefaction"
      },
    },
    prerequisites = {"blood-separation"},
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 }
      },
      time = 60
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "biter-husbandry",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__RichBlood__/graphics/technology/biter-husbandry.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "spawner-growing"
      },
    },
    prerequisites = {"stem-cell-biology","blood-electrolysis"},
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 }
      },
      time = 60
    },
  },
})


data:extend({
  {
    type = "technology",
    name = "BRISPR-enhanced-biter-husbandry",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__RichBlood__/graphics/technology/BRISPR-enhanced-biter-husbandry.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "BRISPR-spawner-growing"
      },
    },
    prerequisites = {"biter-husbandry"},
    unit = {
      count = 400,
      ingredients = {
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60
    },
  },
})



if settings.startup["modify_wood_recipes"].value == true then

	-- Greenhouse: unlock a new wood growing recipe with Water and Blood crystal powder for very early game
	table.insert(data.raw.technology["kr-greenhouse"].effects, {type = "unlock-recipe", recipe = "grow-wood-with-blood-crystal-powder"})
	
	-- Remove kr-grow-wood-with-water from Greenhouse because we are adding Electrolyte to the recipe. Electrolyte is not available at this point in the game.
	for k, effect in pairs(data.raw.technology["kr-greenhouse"].effects) do
	  if effect.recipe == "kr-grow-wood-with-water" then
		table.remove(data.raw.technology["kr-greenhouse"].effects, k)
		break
	  end
	end
	
	-- Unlock kr-grow-wood-with-water in Blood Electrolysis tech instead of Greenhouse tech. Electrolyte is added as an ingredient in data-final-fixes because of AAI Industry
	table.insert(data.raw.technology["blood-electrolysis"].effects, {type = "unlock-recipe", recipe = "kr-grow-wood-with-water"})
else
	-- Unlock grow-wood-with-electrolyte in Blood Electrolysis tech if the setting to modify wood recipes is not enabled.
	table.insert(data.raw.technology["blood-electrolysis"].effects, {type = "unlock-recipe", recipe = "grow-wood-with-electrolyte"})
end

-- Spawner egg to Crude oil unlock
table.insert(data.raw.technology["oil-processing"].effects, {type = "unlock-recipe", recipe = "spawner-egg-liquefaction"})

-- Blood crystal crushing unlocks
--table.insert(data.raw.technology["kr-crusher"].effects, {type = "unlock-recipe", recipe = "blood-crystal-small-crushing"})
--table.insert(data.raw.technology["kr-crusher"].effects, {type = "unlock-recipe", recipe = "blood-crystal-medium-crushing"})
--table.insert(data.raw.technology["kr-crusher"].effects, {type = "unlock-recipe", recipe = "blood-crystal-big-crushing"})

-- BZ mods
if mods["bzaluminum"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-aluminum-ore",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-aluminum-ore.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-aluminum-ore"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal"},
	    unit = {
	      count = 50,
	      ingredients = {
	        { "basic-tech-card", 1 },
	        { "automation-science-pack", 1 },
	      },
	      time = 45
	    },
	  },
	})
end

if mods["bzlead"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-lead-ore",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-lead-ore.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-lead-ore"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal"},
	    unit = {
	      count = 50,
	      ingredients = {
	        { "basic-tech-card", 1 },
	        { "automation-science-pack", 1 },
	      },
	      time = 45
	    },
	  },
	})
end

if mods["bzcarbon"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-flake-graphite",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-flake-graphite.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-flake-graphite"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal", "graphite-processing"},
	    unit = {
	      count = 50,
	      ingredients = {
	        { "basic-tech-card", 1 },
	        { "automation-science-pack", 1 },
	      },
	      time = 45
	    },
	  },
	})
end

if mods["bztungsten"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-tungsten-ore",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-tungsten-ore.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-tungsten-ore"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal", "tungsten-processing"},
	    unit = {
	      count = 50,
	      ingredients = {
	        { "basic-tech-card", 1 },
	        { "automation-science-pack", 1 },
	        { "logistic-science-pack", 1 },
	      },
	      time = 45
	    },
	  },
	})
end

if mods["bzzirconium"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-zircon",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-zircon.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-zircon"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal", "zirconia-processing"},
	    unit = {
	      count = 50,
	      ingredients = {
	        { "basic-tech-card", 1 },
	        { "automation-science-pack", 1 },
	        { "logistic-science-pack", 1 },
	      },
	      time = 45
	    },
	  },
	})
end

if mods["bztitanium"] then
	data:extend({
	  {
	    type = "technology",
	    name = "catalytic-electrolysis-titanium-ore",
	    icon_size = 256,
	    icon_mipmaps = 1,
	    icon = "__RichBlood__/graphics/technology/catalytic-electrolysis-titanium-ore.png",
	    effects = {
	      {
	        type = "unlock-recipe",
	        recipe = "blood-to-titanium-ore"
	      },
	    },
	    prerequisites = {"catalytic-electrolysis-stone", "catalytic-electrolysis-coal", "titanium-processing"},
	    unit = {
	      count = 100,
	      ingredients = {
	        { "automation-science-pack", 1 },
	        { "logistic-science-pack", 1 },
	        { "chemical-science-pack", 1 },
	      },
	      time = 60
	    },
	  },
	})
end
