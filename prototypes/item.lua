data:extend(
{
  {
    type = "item-subgroup",
    name = "blood-processing",
    group = "intermediate-products",
    order = "a[blood]-1"
  },

  {
    type = "item-subgroup",
    name = "blood-resources",
    group = "intermediate-products",
    order = "a[blood]-2"
  }
})

data:extend(
{
  {
    type = "item",
    name = "blood-crystal-small",
    icon = "__RichBlood__/graphics/icons/blood-crystal-small.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-10",
    stack_size = 200,
  },

  {
    type = "item",
    name = "blood-crystal-medium",
    icon = "__RichBlood__/graphics/icons/blood-crystal-medium.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-15",
    stack_size = 200,
  },

  {
    type = "item",
    name = "blood-crystal-big",
    icon = "__RichBlood__/graphics/icons/blood-crystal-big.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-20",
    stack_size = 200,
  },

  {
    type = "item",
    name = "spawner-egg",
    icon = "__RichBlood__/graphics/icons/spawner-egg.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-25",
    stack_size = 200,
  },

  {
    type = "item",
    name = "lab-grown-embryo",
    icon = "__RichBlood__/graphics/icons/lab-grown-embryo.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-30",
    stack_size = 50,
    burnt_result = "empty-lab-capsule",
  },

  {
    type = "item",
    name = "blood-crystal-powder",
    icon = "__RichBlood__/graphics/icons/blood-crystal-powder.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-35",
    stack_size = 200,
  },

  {
    type = "fluid",
    name = "blood",
    default_temperature = 30,
    max_temperature = 40,
    auto_barrel = true,
    base_color = { r = 0.31, g = 0.18, b = 0.35 },
    flow_color = { r = 0.31, g = 0.18, b = 0.35 },
    icon = "__RichBlood__/graphics/icons/blood.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "blood-processing",
    order = "a[blood]-40",
  },

  {
    type = "fluid",
    name = "electrolyte",
    default_temperature = 30,
    max_temperature = 40,
    auto_barrel = true,
    base_color = { r = 0.83, g = 0.9, b = 0.0 },
    flow_color = { r = 1, g = 1, b = 1 },
    icon = "__RichBlood__/graphics/icons/electrolyte.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "blood-processing",
    order = "a[blood]-41",
  },

  {
    type = "item",
    name = "empty-cryogenic-flask",
    icon = "__RichBlood__/graphics/icons/empty-cryogenic-flask.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "a[blood]-45",
    stack_size = 50,
  },

  {
    type = "item",
    name = "empty-cryogenic-barrel",
    icon = "__RichBlood__/graphics/icons/empty-cryogenic-barrel.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "a[blood]-47",
    stack_size = 10,
  },

  {
    type = "item",
    name = "blood-plasma-barrel",
    icons =
   {
      {
        icon = "__RichBlood__/graphics/icons/empty-cryogenic-barrel.png",
        icon_size = 64
      },
      {
        icon = "__RichBlood__/graphics/icons/blood-plasma.png",
        icon_size =  64,
        scale = 0.22,
        shift = {0, 7}
      }
    },
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "a[blood]-48",
    stack_size = 10,
  },
  
  {
    type = "item",
    name = "empty-lab-capsule",
    icon = "__RichBlood__/graphics/icons/empty-lab-capsule.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "a[blood]-50",
    stack_size = 50,
  },


  {
    type = "item",
    name = "stem-cells",
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
      }
    },
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-55",
    stack_size = 50,
    burnt_result = "empty-cryogenic-flask",
  },
  {
    type = "item",
    name = "blood-tissue",
    icon = "__RichBlood__/graphics/icons/blood-tissue.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-52",
    stack_size = 200,
  },
  {
    type = "item",
    name = "blood-centrifuge",
    icon = "__RichBlood__/graphics/icons/blood-centrifuge.png",
    icon_size = 64, icon_mipmaps = 1,
    flags = data.raw.item["centrifuge"].flags,
    subgroup = data.raw.item["centrifuge"].subgroup,
    order = data.raw.item["centrifuge"].order .. "-a",
    stack_size = data.raw.item["centrifuge"].stack_size,
    place_result = "blood-centrifuge",
  },
  {
    type = "item",
    name = "biter-spawner",
    icon = "__RichBlood__/graphics/icons/biter-spawner.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-53",
    stack_size = 50,
    place_result = "biter-spawner",
  },
  {
    type = "item",
    name = "BRISPR-enhanced-biter-spawner",
    icon = "__RichBlood__/graphics/icons/BRISPR-enhanced-biter-spawner.png",
    icon_size = 64,
    subgroup = "blood-processing",
    order = "a[blood]-54",
    stack_size = 50,
    place_result = "BRISPR-enhanced-biter-spawner",
  },
})
