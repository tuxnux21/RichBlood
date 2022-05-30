if settings.startup["modify_wood_recipes"].value == true then
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
	  
	-- Change water back from 800 to 200 in grow-wood-with-water recipe
	  for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-with-water"].ingredients) do
		if ingredient.name == "water" then
		  table.remove(data.raw.recipe["kr-grow-wood-with-water"].ingredients, k)
		  break
		end
	  end
	  table.insert(data.raw.recipe["kr-grow-wood-with-water"].ingredients, {type = "fluid", name = "water", amount = 200})
	  
	  -- Change result back from 20 to 40 Wood
	  data.raw.recipe["kr-grow-wood-with-water"].results = {{type = "item", name = "wood", amount = 40}}
	  
	  -- Change time back from 120 to 30
	  data.raw.recipe["kr-grow-wood-with-water"].energy_required = 30
	  
	--Remove sand from wood with fertilizer recipe
	  for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-plus"].ingredients) do
		if ingredient.name == "sand" then
		  table.remove(data.raw.recipe["kr-grow-wood-plus"].ingredients, k)
		  break
		end
	  end
	 -- Change water back from 400 to 200 in fertilizer recipe
	 for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-plus"].ingredients) do
		if ingredient.name == "water" then
		  table.remove(data.raw.recipe["kr-grow-wood-plus"].ingredients, k)
		  break
		end
	  end
	  table.insert(data.raw.recipe["kr-grow-wood-plus"].ingredients, {type = "fluid", name = "water", amount = 200})
	  
	else
		for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-with-water"].ingredients) do
			if ingredient.name == "water" then
			  table.remove(data.raw.recipe["kr-grow-wood-with-water"].ingredients, k)
			  break
			end
		end
		table.insert(data.raw.recipe["kr-grow-wood-with-water"].ingredients, {type = "fluid", name = "water", amount = 200})
		
		for k, ingredient in pairs(data.raw.recipe["kr-grow-wood-plus"].ingredients) do
			if ingredient.name == "water" then
			  table.remove(data.raw.recipe["kr-grow-wood-plus"].ingredients, k)
			  break
			end
		end
		table.insert(data.raw.recipe["kr-grow-wood-plus"].ingredients, {type = "fluid", name = "water", amount = 200})
	end
else
	if mods["aai-industry"] then
	-- Add sand to the recipe icon
		data.raw.recipe["kr-grow-wood-with-sand"].icons = {
		{icon = data.raw.item["wood"].icon, icon_size = data.raw.item["wood"].icon_size},
		{icon = data.raw.item["sand"].icon, icon_size = data.raw.item["sand"].icon_size, scale = 0.25, shift = {9, -10}}
		}
		data.raw.recipe["kr-grow-wood-with-sand"].icon_size = data.raw.item["wood"].icon_size
		data.raw.recipe["kr-grow-wood-with-sand"].order = "a[wood]-03"
	end
end
