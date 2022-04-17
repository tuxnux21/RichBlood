
-- Add Electrolyte to growing wood.
-- These adjustments are here because K2 is calling a compatibility script from AAI Industry in final fixes
table.insert(data.raw.recipe["kr-grow-wood-with-water"].ingredients, {type = "fluid", name = "electrolyte", amount = 100})
table.insert(data.raw.recipe["kr-grow-wood-plus"].ingredients, {type = "fluid", name = "electrolyte", amount = 100})


if mods["aai-industry"] then
-- Remove grow wood with sand recipe
  for k, effect in pairs(data.raw.technology["kr-greenhouse"].effects) do
    if effect.recipe == "kr-grow-wood-with-sand" then
      table.remove(data.raw.technology["kr-greenhouse"].effects, k)
      break
    end
  end
  data.raw.recipe["kr-grow-wood-with-sand"] = nil
  
-- Adjust grow wood with water and electrolyte recipe
  data.raw.recipe["kr-grow-wood-with-water"].results = {{type = "item", name = "wood", amount = 40}}
  
--Remove sand from wood with fertilizer recipe
  for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-plus"].ingredients) do
    if ingredient.name == "sand" then
      table.remove(data.raw.recipe["kr-grow-wood-plus"].ingredients, k)
      break
    end
  end
end
