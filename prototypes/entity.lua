require ("__base__.prototypes.entity.spawner-animation")

-- Blood centrifuge
local blood_centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
blood_centrifuge.name = "blood-centrifuge"
blood_centrifuge.minable.result = "blood-centrifuge"


blood_centrifuge.icon = "__RichBlood__/graphics/icons/blood-centrifuge.png"
blood_centrifuge.icon_size = 64
blood_centrifuge.icon_mipmaps = 1
blood_centrifuge.crafting_categories = {"blood-centrifuging"}




blood_centrifuge.working_visualisations =
    {
      {
        effect = "uranium-glow",
        fadeout = true,
        light = {intensity = 0.2, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.0, b = 1.0}}
      },
      {
        effect = "uranium-glow",
        fadeout = true,
        draw_as_light = true,
        animation =
        {
          layers =
          {
            -- Centrifuge C
            {
              filename = "__RichBlood__/graphics/entity/blood-centrifuge/centrifuge-C-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 96,
              height = 104,
              frame_count = 64,
              shift = util.by_pixel(0, -27),

              hr_version =
              {
                filename = "__RichBlood__/graphics/entity/blood-centrifuge/hr-centrifuge-C-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 190,
                height = 207,
                frame_count = 64,
                shift = util.by_pixel(0, -27.25)
              }
            },
            -- Centrifuge B
            {
              filename = "__RichBlood__/graphics/entity/blood-centrifuge/centrifuge-B-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 65,
              height = 103,
              frame_count = 64,
              shift = util.by_pixel(16.5, 0.5),
              hr_version =
              {
                filename = "__RichBlood__/graphics/entity/blood-centrifuge/hr-centrifuge-B-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 131,
                height = 206,
                frame_count = 64,
                shift = util.by_pixel(16.75, 0.5)
              }
            },
            -- Centrifuge A
            {
              filename = "__RichBlood__/graphics/entity/blood-centrifuge/centrifuge-A-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 55,
              height = 98,
              frame_count = 64,
              shift = util.by_pixel(-23.5, -2),
              hr_version =
              {
                filename = "__RichBlood__/graphics/entity/blood-centrifuge/hr-centrifuge-A-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 108,
                height = 197,
                frame_count = 64,
                shift = util.by_pixel(-23.5, -1.75)
              }
            }
          }
        }
      }
    }

data:extend({ blood_centrifuge })


-- BRISPR-enhanced biters
local brispr_small_biter = table.deepcopy(data.raw["unit"]["small-biter"])
local brispr_medium_biter = table.deepcopy(data.raw["unit"]["medium-biter"])
local brispr_big_biter = table.deepcopy(data.raw["unit"]["big-biter"])
local brispr_behemoth_biter = table.deepcopy(data.raw["unit"]["behemoth-biter"])

brispr_small_biter.name = "BRISPR-enhanced-small-biter"
brispr_medium_biter.name = "BRISPR-enhanced-medium-biter"
brispr_big_biter.name = "BRISPR-enhanced-big-biter"
brispr_behemoth_biter.name = "BRISPR-enhanced-behemoth-biter"


brispr_small_biter.pollution_to_join_attack = 2
brispr_medium_biter.pollution_to_join_attack = 10
brispr_big_biter.pollution_to_join_attack = 40
brispr_behemoth_biter.pollution_to_join_attack = 200


-- BRISPR-enhanced biter spawner
local brispr_spawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])
brispr_spawner.name = "BRISPR-enhanced-biter-spawner"
brispr_spawner.icon = "__RichBlood__/graphics/icons/BRISPR-enhanced-biter-spawner.png"
brispr_spawner.max_health = 1400
-- brispr_spawner.max_count_of_owned_units = 28
-- brispr_spawner.max_friends_around_to_spawn = 20
brispr_spawner.spawning_cooldown = {180, 75}
brispr_spawner.spawning_radius = 5
-- brispr_spawner.crafting_categories = {"blood-centrifuging"}
brispr_spawner.autoplace = nil

brispr_spawner.result_units = (function()
                     local res = {}
                     res[1] = {"BRISPR-enhanced-small-biter", {{0.0, 0.3}, {0.6, 0.0}}}
                     if not data.is_demo then
                       -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
                       -- this means for example that when the evolution_factor is 0.45 the probability of spawning
                       -- a small biter is 66% while probability for medium biter is 33%.
                       res[2] = {"BRISPR-enhanced-medium-biter", {{0.2, 0.0}, {0.6, 0.3}, {0.7, 0.1}}}
                       -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/8, big-biter 4/8, behemoth biter 3/8
                       res[3] = {"BRISPR-enhanced-big-biter", {{0.5, 0.0}, {1.0, 0.4}}}
                       res[4] = {"BRISPR-enhanced-behemoth-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                     end
                     return res
                   end)()

local biter_spawner_tint = {r=0.9, g=0.1, b=0.9, a=0.9}

brispr_spawner.animations =
    {
      spawner_idle_animation(0, biter_spawner_tint),
      spawner_idle_animation(1, biter_spawner_tint),
      spawner_idle_animation(2, biter_spawner_tint),
      spawner_idle_animation(3, biter_spawner_tint)
    }

data:extend({ brispr_small_biter })
data:extend({ brispr_medium_biter })
data:extend({ brispr_big_biter })
data:extend({ brispr_behemoth_biter })
data:extend({ brispr_spawner })
