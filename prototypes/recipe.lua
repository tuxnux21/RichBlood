local richness = settings.startup["blood_richness_multiplier"].value

data:extend({

-- Small blood crystal crushing
  {
    type = "recipe",
    name = "blood-crystal-small-crushing",
    order = "a[blood-crystal]-1",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "crushing",
    energy_required = 0.5,
    enabled = true,
    hidden = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-small", amount = 1 },
    },
    results =
    {
      { type = "item", name = "blood-crystal-powder", amount = 1 * richness },
    },
  },

-- Medium blood crystal crushing
  {
    type = "recipe",
    name = "blood-crystal-medium-crushing",
    order = "a[blood-crystal]-2",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "crushing",
    energy_required = 1,
    enabled = true,
    hidden = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-medium", amount = 1 },
    },
    results =
    {
      { type = "item", name = "blood-crystal-powder", amount = 2 * richness },
    },
  },

-- Big blood crystal crushing
  {
    type = "recipe",
    name = "blood-crystal-big-crushing",
    order = "a[blood-crystal]-3",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "crushing",
    energy_required = 2,
    enabled = true,
    hidden = true,
    ingredients =
    {
      { type = "item", name = "blood-crystal-big", amount = 1 },
    },
    results = {
      { type = "item", name = "blood-crystal-powder", amount = 4 * richness },
    },
  },

-- Blood crystal powder liquefaction
  {
    type = "recipe",
    name = "blood-crystal-powder-liquefaction",
    order = "z[blood]-40",
    group = "intermediate-products",
    subgroup = "fluid-recipes",
    category = "chemistry",
    energy_required = 2,
    enabled = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/blood-crystal-powder-liquefaction.png",
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "blood-crystal-powder", amount = 4 },
      { type = "fluid", name = "steam", amount = 40 },
    },
    results =
    {
      { type = "fluid", name = "blood", amount = 20 },
    },
  },

-- Blood Electrolysis
  {
    type = "recipe",
    name = "blood-electrolysis",
    order = "z[blood]-43[blood-electrolysis]",
    group = "intermediate-products",    
    subgroup = "fluid-recipes",
    category = "electrolysis",
    energy_required = 8,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/blood-electrolysis.png",
    icon_size = 128,
    ingredients =
    {
      { type = "fluid", name = "blood", amount = 80 },
      { type = "fluid", name = "water", amount = 120 },
    },
    results =
    {
      { type = "fluid", name = "electrolyte", amount = 100 },
      { type = "fluid", name = "mineral-water", amount = 100 },
    },
  },

-- Blood to Coal
  {
    type = "recipe",
    name = "blood-to-coal",
    order = "b[blood]-10[coal]",
    group = "intermediate-products",    
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = data.raw.item["coal"].icon,
			icon_size = data.raw.item["coal"].icon_size
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "coal", amount = 1 },
      { type = "fluid", name = "blood", amount = 8 },
      { type = "fluid", name = "water", amount = 80 },
    },
    results =
    {
      { type = "item", name = "coal", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 80 },
    },
  },

-- Blood to Stone
  {
    type = "recipe",
    name = "blood-to-stone",
    order = "b[blood]-15[stone]",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 2,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = data.raw.item["stone"].icon,
			icon_size = data.raw.item["stone"].icon_size
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "stone", amount = 1 },
      { type = "fluid", name = "blood", amount = 8 },
      { type = "fluid", name = "water", amount = 80 },
    },
    results =
    {
      { type = "item", name = "stone", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 80 },
    },
  },

-- Blood to Iron ore
  {
    type = "recipe",
    name = "blood-to-iron-ore",
    order = "b[blood]-20[iron-ore]",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 4,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = data.raw.item["iron-ore"].icon,
			icon_size = data.raw.item["iron-ore"].icon_size
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "iron-ore", amount = 1 },
      { type = "fluid", name = "blood", amount = 10 },
      { type = "fluid", name = "water", amount = 100 },
    },
    results =
    {
      { type = "item", name = "iron-ore", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 100 },
    },
  },

-- Blood to Copper ore
  {
    type = "recipe",
    name = "blood-to-copper-ore",
    order = "b[blood]-25[copper-ore]",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 4,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = data.raw.item["copper-ore"].icon,
			icon_size = data.raw.item["copper-ore"].icon_size
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "copper-ore", amount = 1 },
      { type = "fluid", name = "blood", amount = 12 },
      { type = "fluid", name = "water", amount = 120 },
    },
    results =
    {
      { type = "item", name = "copper-ore", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 120 },
    },
  },

-- Blood to Raw rare metals
  {
    type = "recipe",
    name = "blood-to-raw-rare-metals",
    order = "b[blood]-30[raw-rare-metals]",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 8,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = "__Krastorio2Assets__/icons/items-with-variations/raw-rare-metals/raw-rare-metals.png",
			icon_size = 64
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "raw-rare-metals", amount = 1 },
      { type = "fluid", name = "blood", amount = 18 },
      { type = "fluid", name = "water", amount = 180 },
    },
    results =
    {
      { type = "item", name = "raw-rare-metals", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 180 },
    },
  },

-- Blood to Uranium ore
  {
    type = "recipe",
    name = "blood-to-uranium-ore",
    order = "b[blood]-35[uranium-ore]",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "electrolysis",
    energy_required = 8,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icons =
	{
		{
			icon = data.raw.item["uranium-ore"].icon,
			icon_size = data.raw.item["uranium-ore"].icon_size
		},
		{
			icon = "__RichBlood__/graphics/icons/lightning.png",
			icon_size =  128,
			scale = 0.4,
			shift = {-1, 4}
		}
	},
    icon_size = 64,
    ingredients =
    {
      { type = "item", name = "uranium-ore", amount = 1 },
      { type = "fluid", name = "blood", amount = 20 },
      { type = "fluid", name = "water", amount = 200 },
    },
    results =
    {
      { type = "item", name = "uranium-ore", amount = 5 },
      { type = "fluid", name = "dirty-water", amount = 200 },
    },
  },

-- Blood filtration
  {
    type = "recipe",
    name = "blood-filtration",
    order = "z[blood]-45[blood-filtration]",
    group = "intermediate-products",
    subgroup = "fluid-recipes",
    category = "fluid-filtration",
    energy_required = 8,
    enabled = false,
    allow_decomposition = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/blood-filtration.png",
    icon_size = 128,
    ingredients =
    {
      { type = "fluid", name = "blood", amount = 50 },
    },
    results =
    {
      { type = "fluid", name = "water", amount = 40 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
  },

-- Spawner egg liquefaction
  {
    type = "recipe",
    name = "spawner-egg-liquefaction",
    order = "z[blood]-50[crude-oil]",
    group = "intermediate-products",
    subgroup = "fluid-recipes",
    category = "chemistry",
    energy_required = 24,
    enabled = false,
    main_product = "",
    icons =
    {
      {
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64
      },
      {
        icon = "__RichBlood__/graphics/icons/spawner-egg.png",
        icon_size =  64,
        scale = 0.25,
        shift = {12, -10}
      },
    },
    icon_size = 64,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "spawner-egg", amount = 1 },
      { type = "item", name = "coke", amount = 20 },
      { type = "fluid", name = "steam", amount = 600 },
    },
    results =
    {
      { type = "fluid", name = "crude-oil", amount = 600 },
    },
  },

-- Lab-grown embryo liquefaction
  {
    type = "recipe",
    name = "lab-grown-embryo-liquefaction",
    order = "z[blood]-52[crude-oil]",
    group = "intermediate-products",
    subgroup = "fluid-recipes",
    category = "chemistry",
    energy_required = 12,
    enabled = false,
    main_product = "",
    icons =
    {
      {
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64
      },
      {
        icon = "__RichBlood__/graphics/icons/lab-grown-embryo.png",
        icon_size =  64,
        scale = 0.25,
        shift = {12, -10}
      },
    },
    icon_size = 64,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "lab-grown-embryo", amount = 1 },
      { type = "item", name = "coke", amount = 10 },
      { type = "fluid", name = "steam", amount = 300 },
    },
    results =
    {
      { type = "fluid", name = "crude-oil", amount = 300 },
      { type = "item", name = "empty-lab-capsule", amount = 1 },
    },
  },

-- Wood from Water and Blood crystal powder
  {
    type = "recipe",
    name = "grow-wood-with-blood-crystal-powder",
    order = "a[wood]-01",
    group = "intermediate-products",
    subgroup = "raw-resource",
    category = "growing",
    energy_required = 30,
    enabled = false,
    icons =
	{
		{
			icon = data.raw.item["wood"].icon,
			icon_size = data.raw.item["wood"].icon_size
		},
		{
			icon = data.raw.item["blood-crystal-powder"].icon,
			icon_size =	data.raw.item["blood-crystal-powder"].icon_size,
			scale = 0.25 * (data.raw.item["wood"].icon_size/data.raw.item["blood-crystal-powder"].icon_size),
			shift = {9, -12}
		}
	},
	icon_size = data.raw.item["wood"].icon_size,
    allow_decomposition = false,
    ingredients =
    {
      { type = "fluid", name = "water", amount = 100 },
      { type = "item", name = "blood-crystal-powder", amount = 4 },
    },
    results =
    {
      { type = "item", name = "wood", amount = 8 },
    },
  },

-- Biomass from Blood tissue
  {
    type = "recipe",
    name = "biomass-from-blood-tissue",
    order = "a[biomass]-from-blood-tissue",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    energy_required = 30,
    enabled = false,
    icons =
	{
		{
			icon = data.raw.item["biomass"].icon,
			icon_size = data.raw.item["biomass"].icon_size
		},
		{
			icon = data.raw.item["blood-tissue"].icon,
			icon_size =	data.raw.item["blood-tissue"].icon_size,
			scale = 0.25 * (data.raw.item["biomass"].icon_size/data.raw.item["blood-tissue"].icon_size),
			shift = {9, -12}
		}
	},
	icon_size = data.raw.item["biomass"].icon_size,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "blood-tissue", amount = 5 },
      { type = "item", name = "wood", amount = 5 },
      { type = "fluid", name = "oxygen", amount = 50 },
    },
    results =
    {
      { type = "item", name = "biomass", amount = 5 },
    },
  },


-- Blood separation
  {
    type = "recipe",
    name = "blood-separation",
    order = "z[blood]-43[blood-separation]",
    group = "intermediate-products",    
    subgroup = "fluid-recipes",
    category = "blood-centrifuging",
    energy_required = 60,
    enabled = false,
    allow_decomposition = true,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/blood-separation.png",
    icon_size = 128,
    ingredients =
    {
      { type = "fluid", name = "blood", amount = 100 },
      { type = "fluid", name = "nitrogen", amount = 50 },
      { type = "item", name = "empty-cryogenic-barrel", amount = 1 },
    },
    results =
    {
      { type = "item", name = "blood-plasma-barrel", amount = 1 },
      { type = "item", name = "blood-tissue", amount = 5 },
    },
  },
  
-- Blood centrifuge
  {
    type = "recipe",
    name = "blood-centrifuge",
    order = "g[centrifuge-blood]",
    group = "production",
    subgroup = "production-machine",
    category = "crafting",
    energy_required = 4,
    enabled = false,
    allow_decomposition = true,
    ingredients =
    {
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "iron-gear-wheel", amount = 50 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "glass", amount = 50 },
      { type = "item", name = "plastic-bar", amount = 20 }
    },
    results =
    {
      { type = "item", name = "blood-centrifuge", amount = 1 },
    },
  },
  
  -- Empty cryogenic flask
  {
    type = "recipe",
    name = "empty-cryogenic-flask",
    order = "d[empty-cryogenic-flask]",
    group = "intermediate-products",
    subgroup = "intermediate-product",
    category = "crafting",
    energy_required = 4,
    enabled = false,
    allow_decomposition = true,
    ingredients =
    {
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "glass", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results =
    {
      { type = "item", name = "empty-cryogenic-flask", amount = 10 },
    },
  },

-- Empty cryogenic barrel
  {
    type = "recipe",
    name = "empty-cryogenic-barrel",
    order = "d[empty-cryogenic-barrel]",
    group = "intermediate-products",
    subgroup = "intermediate-product",
    category = "crafting",
    energy_required = 4,
    enabled = false,
    allow_decomposition = true,
    ingredients =
    {
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "glass", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results =
    {
      { type = "item", name = "empty-cryogenic-barrel", amount = 2 },
    },
  },

-- Empty lab capsule
  {
    type = "recipe",
    name = "empty-lab-capsule",
    order = "d[empty-lab-capsule]",
    group = "intermediate-products",
    subgroup = "intermediate-product",
    category = "crafting",
    energy_required = 4,
    enabled = false,
    allow_decomposition = true,
    ingredients =
    {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "glass", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 1 },
    },
    results =
    {
      { type = "item", name = "empty-lab-capsule", amount = 1 },
    },
  },

-- Stem cells from spawner egg
  {
    type = "recipe",
    name = "stem-cells-from-spawner-egg",
    order = "a[blood]-10",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    icons =
    {
      {
        icon = "__RichBlood__/graphics/icons/empty-cryogenic-flask.png",
        icon_size = 64
      },
      {
        icon = "__RichBlood__/graphics/icons/stem-cells.png",
        icon_size =  64,
        scale = 0.25,
        shift = {0, 7}
      },
      {
        icon = "__RichBlood__/graphics/icons/spawner-egg.png",
        icon_size =  64,
        scale = 0.25,
        shift = {12, -10}
      },
    },
    icon_size = 64,
    energy_required = 30,
    enabled = false,
    main_product = "",
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "spawner-egg", amount = 1 },
      { type = "item", name = "empty-cryogenic-flask", amount = 5 },
      { type = "fluid", name = "nitrogen", amount = 50 },
    },
    results =
    {
      { type = "item", name = "stem-cells", amount = 5 },
      { type = "item", name = "spawner-egg", amount = 1, probability = 0.2 },
    },
  },

-- Stem cells from lab-grown-embryo
  {
    type = "recipe",
    name = "stem-cells-from-lab-grown-embryo",
    order = "a[blood]-15",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    icons =
    {
      {
        icon = "__RichBlood__/graphics/icons/empty-cryogenic-flask.png",
        icon_size = 64
      },
      {
        icon = "__RichBlood__/graphics/icons/stem-cells.png",
        icon_size =  64,
        scale = 0.25,
        shift = {0, 7}
      },
      {
        icon = "__RichBlood__/graphics/icons/lab-grown-embryo.png",
        icon_size =  64,
        scale = 0.25,
        shift = {12, -10}
      },
    },
    icon_size = 64,
    energy_required = 30,
    enabled = false,
    main_product = "",
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "lab-grown-embryo", amount = 1 },
      { type = "item", name = "empty-cryogenic-flask", amount = 5 },
      { type = "fluid", name = "nitrogen", amount = 50 },
    },
    results =
    {
      { type = "item", name = "stem-cells", amount = 5 },
      { type = "item", name = "lab-grown-embryo", amount = 1, probability = 0.80 },
      { type = "item", name = "empty-lab-capsule", amount = 1, probability = 0.20 }
    },
  },

-- Embryo growing
  {
    type = "recipe",
    name = "embryo-growing",
    order = "a[blood]-20",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    energy_required = 60,
    enabled = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/lab-grown-embryo.png",
    icon_size = 64,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "biomass", amount = 5 },
      { type = "item", name = "stem-cells", amount = 5 },
      { type = "item", name = "empty-lab-capsule", amount = 5 },
      { type = "item", name = "blood-plasma-barrel", amount = 1 },
    },
    results =
    {
      { type = "item", name = "lab-grown-embryo", amount = 5 },
      { type = "item", name = "empty-cryogenic-flask", amount = 5 },
      { type = "item", name = "empty-cryogenic-barrel", amount = 1 },
    },
  },
  
  -- Spawner growing
  {
    type = "recipe",
    name = "spawner-growing",
    order = "a[blood]-25",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    energy_required = 60,
    enabled = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/biter-spawner.png",
    icon_size = 64,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "biomass", amount = 10 },
      { type = "item", name = "stem-cells", amount = 2 },
      { type = "item", name = "spawner-egg", amount = 1 },
      { type = "fluid", name = "electrolyte", amount = 200 },
    },
    results =
    {
      { type = "item", name = "biter-spawner", amount = 1 },
      { type = "item", name = "empty-cryogenic-flask", amount = 2 },
    },
  },

  -- BRISPR spawner growing
  {
    type = "recipe",
    name = "BRISPR-spawner-growing",
    order = "a[blood]-30",
    group = "intermediate-products",
    subgroup = "raw-material",
    category = "bioprocessing",
    energy_required = 60,
    enabled = false,
    main_product = "",
    icon = "__RichBlood__/graphics/icons/BRISPR-enhanced-biter-spawner.png",
    icon_size = 64,
    allow_decomposition = false,
    ingredients =
    {
      { type = "item", name = "biomass", amount = 20 },
      { type = "item", name = "stem-cells", amount = 8 },
      { type = "item", name = "spawner-egg", amount = 1 },
      { type = "fluid", name = "electrolyte", amount = 800 },
    },
    results =
    {
      { type = "item", name = "BRISPR-enhanced-biter-spawner", amount = 1 },
      { type = "item", name = "empty-cryogenic-flask", amount = 8 },
    },
  },
})


-- Blood to Raw imersite
if not mods["space-exploration"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-raw-imersite",
		order = "b[blood]-40[raw-imersite]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 16,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__Krastorio2Assets__/icons/items-with-variations/raw-imersite/raw-imersite.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "raw-imersite", amount = 1 },
		  { type = "fluid", name = "blood", amount = 24 },
		  { type = "fluid", name = "water", amount = 240 },
		},
		results =
		{
		  { type = "item", name = "raw-imersite", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 240 },
		},
	  },
	})
end

if settings.startup["modify_wood_recipes"].value == false then
-- Wood from Electrolyte and Water
	data:extend({
	  {
		type = "recipe",
		name = "grow-wood-with-electrolyte",
		order = "a[wood]-04",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "growing",
		energy_required = 30,
		enabled = false,
		icons =
		{
			{
				icon = data.raw.item["wood"].icon,
				icon_size = data.raw.item["wood"].icon_size
			},
			{
				icon = data.raw.fluid["electrolyte"].icon,
				icon_size =	data.raw.fluid["electrolyte"].icon_size,
				scale = 0.25 * (data.raw.item["wood"].icon_size/data.raw.fluid["electrolyte"].icon_size),
				shift = {9, -12}
			}
		},
		icon_size = data.raw.item["wood"].icon_size,
		allow_decomposition = false,
		ingredients =
		{
		  { type = "fluid", name = "electrolyte", amount = 100 },
		  { type = "fluid", name = "water", amount = 200 },
		},
		results =
		{
		  { type = "item", name = "wood", amount = 40 },
		},
	  }
  	})
end


-- BZ mods
if mods["bzaluminum"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-aluminum-ore",
		order = "b[blood]-17[aluminum-ore]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 4,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "aluminum-ore", amount = 1 },
		  { type = "fluid", name = "blood", amount = 10 },
		  { type = "fluid", name = "water", amount = 100 },
		},
		results =
		{
		  { type = "item", name = "aluminum-ore", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 100 },
		},
	  },
	})
end

if mods["bzlead"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-lead-ore",
		order = "b[blood]-18[lead-ore]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 4,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bzlead__/graphics/icons/lead-ore.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "lead-ore", amount = 1 },
		  { type = "fluid", name = "blood", amount = 10 },
		  { type = "fluid", name = "water", amount = 100 },
		},
		results =
		{
		  { type = "item", name = "lead-ore", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 100 },
		},
	  },
	})
end

if mods["bzcarbon"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-flake-graphite",
		order = "b[blood]-26[flake-graphite]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 4,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bzcarbon__/graphics/icons/flake-graphite.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "flake-graphite", amount = 1 },
		  { type = "fluid", name = "blood", amount = 12 },
		  { type = "fluid", name = "water", amount = 120 },
		},
		results =
		{
		  { type = "item", name = "flake-graphite", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 120 },
		},
	  },
	})
end

if mods["bztungsten"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-tungsten-ore",
		order = "b[blood]-27[tungsten-ore]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 6,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bztungsten__/graphics/icons/tungsten-ore.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "tungsten-ore", amount = 1 },
		  { type = "fluid", name = "blood", amount = 14 },
		  { type = "fluid", name = "water", amount = 140 },
		},
		results =
		{
		  { type = "item", name = "tungsten-ore", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 140 },
		},
	  },
	})
end

if mods["bzzirconium"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-zircon",
		order = "b[blood]-28[zircon]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 6,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bzzirconium__/graphics/icons/zircon.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "zircon", amount = 1 },
		  { type = "fluid", name = "blood", amount = 14 },
		  { type = "fluid", name = "water", amount = 140 },
		},
		results =
		{
		  { type = "item", name = "zircon", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 140 },
		},
	  },
	})
end

if mods["bztitanium"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-titanium-ore",
		order = "b[blood]-29[titanium]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 8,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bztitanium__/graphics/icons/titanium-ore.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "titanium-ore", amount = 1 },
		  { type = "fluid", name = "blood", amount = 20 },
		  { type = "fluid", name = "water", amount = 200 },
		},
		results =
		{
		  { type = "item", name = "titanium-ore", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 200 },
		},
	  },
	})
end

if mods["bztin"] then
	data:extend({
	  {
		type = "recipe",
		name = "blood-to-tin-ore",
		order = "b[blood]-19[tin]",
		group = "intermediate-products",
		subgroup = "raw-resource",
		category = "electrolysis",
		energy_required = 4,
		enabled = false,
		allow_decomposition = false,
		main_product = "",
		icons =
		{
			{
				icon = "__bztin__/graphics/icons/tin-ore.png",
				icon_size = 64
			},
			{
				icon = "__RichBlood__/graphics/icons/lightning.png",
				icon_size =  128,
				scale = 0.4,
				shift = {-1, 4}
			}
		},
		icon_size = 64,
		ingredients =
		{
		  { type = "item", name = "tin-ore", amount = 1 },
		  { type = "fluid", name = "blood", amount = 10 },
		  { type = "fluid", name = "water", amount = 100 },
		},
		results =
		{
		  { type = "item", name = "tin-ore", amount = 5 },
		  { type = "fluid", name = "dirty-water", amount = 100 },
		},
	  },
	})
end
