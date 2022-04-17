
-- Biters
if not data.raw["unit"]['small-biter'].loot then
  data.raw["unit"]['small-biter'].loot = {}
end

if not data.raw["unit"]['medium-biter'].loot then
  data.raw["unit"]['medium-biter'].loot = {}
end

if not data.raw["unit"]['big-biter'].loot then
  data.raw["unit"]['big-biter'].loot = {}
end

if not data.raw["unit"]['behemoth-biter'].loot then
  data.raw["unit"]['behemoth-biter'].loot = {}
end

-- BRISPR Biters
if not data.raw["unit"]['BRISPR-enhanced-small-biter'].loot then
  data.raw["unit"]['BRISPR-enhanced-small-biter'].loot = {}
end

if not data.raw["unit"]['BRISPR-enhanced-medium-biter'].loot then
  data.raw["unit"]['BRISPR-enhanced-medium-biter'].loot = {}
end

if not data.raw["unit"]['BRISPR-enhanced-big-biter'].loot then
  data.raw["unit"]['BRISPR-enhanced-big-biter'].loot = {}
end

if not data.raw["unit"]['BRISPR-enhanced-behemoth-biter'].loot then
  data.raw["unit"]['BRISPR-enhanced-behemoth-biter'].loot = {}
end

-- Spitters
if not data.raw["unit"]['small-spitter'].loot then
  data.raw["unit"]['small-spitter'].loot = {}
end

if not data.raw["unit"]['medium-spitter'].loot then
  data.raw["unit"]['medium-spitter'].loot = {}
end

if not data.raw["unit"]['big-spitter'].loot then
  data.raw["unit"]['big-spitter'].loot = {}
end

if not data.raw["unit"]['behemoth-spitter'].loot then
  data.raw["unit"]['behemoth-spitter'].loot = {}
end


-- Spawners
if not data.raw["unit-spawner"]['biter-spawner'].loot then
  data.raw["unit-spawner"]['biter-spawner'].loot = {}
end

if not data.raw["unit-spawner"]['spitter-spawner'].loot then
  data.raw["unit-spawner"]['spitter-spawner'].loot = {}
end

if not data.raw["unit-spawner"]['BRISPR-enhanced-biter-spawner'].loot then
  data.raw["unit-spawner"]['BRISPR-enhanced-biter-spawner'].loot = {}
end


table.insert(data.raw["unit"]['small-biter'].loot, { item = "blood-crystal-small" })
table.insert(data.raw["unit"]['medium-biter'].loot, { item = "blood-crystal-medium" })
table.insert(data.raw["unit"]['big-biter'].loot, { item = "blood-crystal-big" })
table.insert(data.raw["unit"]['behemoth-biter'].loot, { item = "blood-crystal-big", count_min = 4,count_max = 4 })

table.insert(data.raw["unit"]['BRISPR-enhanced-small-biter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
table.insert(data.raw["unit"]['BRISPR-enhanced-medium-biter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
table.insert(data.raw["unit"]['BRISPR-enhanced-big-biter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
table.insert(data.raw["unit"]['BRISPR-enhanced-behemoth-biter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })

table.insert(data.raw["unit"]['small-spitter'].loot, { item = "blood-crystal-small" })
table.insert(data.raw["unit"]['medium-spitter'].loot, { item = "blood-crystal-medium" })
table.insert(data.raw["unit"]['big-spitter'].loot, { item = "blood-crystal-big" })
table.insert(data.raw["unit"]['behemoth-spitter'].loot, { item = "blood-crystal-big", count_min = 4,count_max = 4 })

table.insert(data.raw["unit-spawner"]['biter-spawner'].loot, { item = "spawner-egg", count_min = 8, count_max = 10 })
table.insert(data.raw["unit-spawner"]['spitter-spawner'].loot, { item = "spawner-egg", count_min = 8, count_max = 10 })
table.insert(data.raw["unit-spawner"]['BRISPR-enhanced-biter-spawner'].loot, { item = "spawner-egg", count_min = 16, count_max = 20 })





-- Armoured biters (aka Snappers)
if mods["ArmouredBiters"] then
	if not data.raw["unit"]['small-armoured-biter'].loot then
	  data.raw["unit"]['small-armoured-biter'].loot = {}
	end
	
	if not data.raw["unit"]['medium-armoured-biter'].loot then
	  data.raw["unit"]['medium-armoured-biter'].loot = {}
	end
	
	if not data.raw["unit"]['big-armoured-biter'].loot then
	  data.raw["unit"]['big-armoured-biter'].loot = {}
	end
	
	if not data.raw["unit"]['behemoth-armoured-biter'].loot then
	  data.raw["unit"]['behemoth-armoured-biter'].loot = {}
	end
	
	if not data.raw["unit"]['leviathan-armoured-biter'].loot then
	  data.raw["unit"]['leviathan-armoured-biter'].loot = {}
	end
	
	if data.raw["unit-spawner"]['armoured-biter-spawner'] and not data.raw["unit-spawner"]['armoured-biter-spawner'].loot then
		data.raw["unit-spawner"]['armoured-biter-spawner'].loot = {}
	end
	
	table.insert(data.raw["unit"]['small-armoured-biter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['medium-armoured-biter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['big-armoured-biter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['behemoth-armoured-biter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })
	table.insert(data.raw["unit"]['leviathan-armoured-biter'].loot, { item = "blood-crystal-big", count_min = 16,count_max = 16 })
	
	if data.raw["unit-spawner"]['armoured-biter-spawner'] then
		table.insert(data.raw["unit-spawner"]['armoured-biter-spawner'].loot, { item = "spawner-egg", count_min = 12, count_max = 14 })
	end
end



-- Cold biters
if mods["Cold_biters"] then
	if not data.raw["unit"]['small-cold-biter'].loot then
	  data.raw["unit"]['small-cold-biter'].loot = {}
	end
	
	if not data.raw["unit"]['medium-cold-biter'].loot then
	  data.raw["unit"]['medium-cold-biter'].loot = {}
	end
	
	if not data.raw["unit"]['big-cold-biter'].loot then
	  data.raw["unit"]['big-cold-biter'].loot = {}
	end
	
	if not data.raw["unit"]['behemoth-cold-biter'].loot then
	  data.raw["unit"]['behemoth-cold-biter'].loot = {}
	end
	
	if not data.raw["unit"]['leviathan-cold-biter'].loot then
	  data.raw["unit"]['leviathan-cold-biter'].loot = {}
	end
	
	if not data.raw["unit"]['small-cold-spitter'].loot then
	  data.raw["unit"]['small-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['medium-cold-spitter'].loot then
	  data.raw["unit"]['medium-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['big-cold-spitter'].loot then
	  data.raw["unit"]['big-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['behemoth-cold-spitter'].loot then
	  data.raw["unit"]['behemoth-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['leviathan-cold-spitter'].loot then
	  data.raw["unit"]['leviathan-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['mother-cold-spitter'].loot then
	  data.raw["unit"]['mother-cold-spitter'].loot = {}
	end
	
	if not data.raw["unit-spawner"]['cb-cold-spawner'].loot then
	  data.raw["unit-spawner"]['cb-cold-spawner'].loot = {}
	end
	
	table.insert(data.raw["unit"]['small-cold-biter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['medium-cold-biter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['big-cold-biter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['behemoth-cold-biter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })
	table.insert(data.raw["unit"]['leviathan-cold-biter'].loot, { item = "blood-crystal-big", count_min = 16,count_max = 16 })
	
	table.insert(data.raw["unit"]['small-cold-spitter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['medium-cold-spitter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['big-cold-spitter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['behemoth-cold-spitter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })
	table.insert(data.raw["unit"]['leviathan-cold-spitter'].loot, { item = "blood-crystal-big", count_min = 16,count_max = 16 })
	table.insert(data.raw["unit"]['mother-cold-spitter'].loot, { item = "blood-crystal-big", count_min = 48,count_max = 48 })
	
	table.insert(data.raw["unit-spawner"]['cb-cold-spawner'].loot, { item = "spawner-egg", count_min = 16, count_max = 18 })
end


-- Explosive biters
if mods["Explosive_biters"] then
	if not data.raw["unit"]['small-explosive-biter'].loot then
	  data.raw["unit"]['small-explosive-biter'].loot = {}
	end
	
	if not data.raw["unit"]['medium-explosive-biter'].loot then
	  data.raw["unit"]['medium-explosive-biter'].loot = {}
	end
	
	if not data.raw["unit"]['big-explosive-biter'].loot then
	  data.raw["unit"]['big-explosive-biter'].loot = {}
	end
	
	if not data.raw["unit"]['behemoth-explosive-biter'].loot then
	  data.raw["unit"]['behemoth-explosive-biter'].loot = {}
	end
	
	if not data.raw["unit"]['explosive-leviathan-biter'].loot then
	  data.raw["unit"]['explosive-leviathan-biter'].loot = {}
	end
	
	if not data.raw["unit"]['small-explosive-spitter'].loot then
	  data.raw["unit"]['small-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['medium-explosive-spitter'].loot then
	  data.raw["unit"]['medium-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['big-explosive-spitter'].loot then
	  data.raw["unit"]['big-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['behemoth-explosive-spitter'].loot then
	  data.raw["unit"]['behemoth-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['leviathan-explosive-spitter'].loot then
	  data.raw["unit"]['leviathan-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit"]['mother-explosive-spitter'].loot then
	  data.raw["unit"]['mother-explosive-spitter'].loot = {}
	end
	
	if not data.raw["unit-spawner"]['explosive-biter-spawner'].loot then
	  data.raw["unit-spawner"]['explosive-biter-spawner'].loot = {}
	end
	
	
	
	table.insert(data.raw["unit"]['small-explosive-biter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['medium-explosive-biter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['big-explosive-biter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['behemoth-explosive-biter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })
	table.insert(data.raw["unit"]['explosive-leviathan-biter'].loot, { item = "blood-crystal-big", count_min = 16,count_max = 16 })
	
	table.insert(data.raw["unit"]['small-explosive-spitter'].loot, { item = "blood-crystal-small", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['medium-explosive-spitter'].loot, { item = "blood-crystal-medium", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['big-explosive-spitter'].loot, { item = "blood-crystal-big", count_min = 2,count_max = 2 })
	table.insert(data.raw["unit"]['behemoth-explosive-spitter'].loot, { item = "blood-crystal-big", count_min = 8,count_max = 8 })
	table.insert(data.raw["unit"]['leviathan-explosive-spitter'].loot, { item = "blood-crystal-big", count_min = 16,count_max = 16 })
	table.insert(data.raw["unit"]['mother-explosive-spitter'].loot, { item = "blood-crystal-big", count_min = 48,count_max = 48 })
	
	table.insert(data.raw["unit-spawner"]['explosive-biter-spawner'].loot, { item = "spawner-egg", count_min = 16, count_max = 18 })
end
