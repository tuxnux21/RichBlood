-- Change force to enemy when placing biter spawner (otherwise the force is "player" and biters don't attack)
local function player_built_function(event)
  if event.created_entity.type == 'unit-spawner' then
    event.created_entity.force ="enemy"
  end
  if event.created_entity.type == 'BRISPR-enhanced-biter-spawner' then
    event.created_entity.force ="enemy"
  end
end

script.on_event(defines.events.on_built_entity, player_built_function)
