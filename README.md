
## Overview
This is a mod for Krastorio2 that is meant to be played with low or no resources. Blood acts as a universal resource that can be processed into any basic resource, similar to the late-game Matter. In most cases, there is more than one way to obtain a resource from blood.

This mod does not make any changes to resource generation or biters difficulty, so it's up to the player to create a challenge. This mod also does not remove mining equipment.
Resource Spawner Overhaul (RSO) is recommended as it can be configured to generate very sparse resources, and also has an option for no starting resources. (Why do we always conveniently crash next to ore patches anyway?)
If playing without starting resources, then the early game may feel slow. There's only a pistol and 10 ammunition rounds to get the ball rolling. To speed things up, some "fast start" mods could be installed. Also, Krastorio has a 'bonus start items' option, and this mod also has a "blood richness multiplier" setting. Note you may have to lower difficulty of biters a bit (e.g. reduce time-based evolution by half or more) because getting resources won't be as easy as plopping down some miners.

Another challenge option is to use the Island map that has some resources to get the base started but would force player to transition to blood recipes at some point.

The most difficult resource to automate in this mod is Crude Oil, but there should be plenty of it once automated. Just like Krastorio2 forces player to go and kill some nests to automate Biomass production, this mod will require player to kill some nests to collect enough spawner eggs to research and automate Crude Oil production. The recipe is fairly generous, but still exercise caution if increasing technology cost multiplier.

## Loot Pickup
Blood crystals dropped by biters need to be picked up. Too many items lying on the ground will eventually slow down the game. This mod does not include any built-in option for loot pickup.

Here are some loot pickup mods that were tested:
- [Auto Deconstruct Loot, Reconstructed](https://mods.factorio.com/mod/auto_deconstruct_loot_reconstructed) by Derringer - works great for when construction robots are unlocked
- [Schall Pickup Tower](https://mods.factorio.com/mod/SchallPickupTower) by Schallfalke - reportedly will have UPS issues if a lot of them are placed, but with the ability to create biter farms not that many towers may be required
- [Loot Chest UPS](https://mods.factorio.com/mod/LootChestUPS) by ptx0 - should be very UPS-friendly, but could feel a bit too "magical" to some

Alternatively, you can get creative with belts picking up loot. They are a solid early game option.


## Blood, Wood, and Matter
This mod changes wood recipes so that they require a blood product. The goal here is to remove the "infinite matter with zero input" loop in Krastorio2. Additionally, the goal is for blood recipes to not become obsolete once matter recipes are unlocked. The idea is that matter recipes could be used for unwanted blood byproducts or for any excess of a resource.

## Biter Farms
The mod allows placement of two tiers of biter spawners for blood farming. There's a caveat though. Spawners generate two kinds of biters: the "guardians" which stay close to the spawner and don't require pollution to spawn, and the "group attack" biters which spawn from absorbed pollution. The "guardians" attack on proximity, and they are the main source of blood in the early game if playing without starting resources. These "guardians", however, become "frozen" once player moves too far away from the spawner. The game freezes them to conserve resources. The pollution-induced "group attack" biters don't have this limitation. Design farms accordingly.


## Compatibility
This mod loads with Space Exploration (SE) but does not add any recipes for SE-specific resources. Additionally, Imersite won't be available from blood recipes if SE is installed because Imersite is not meant to be found on Nauvius with SE.

All resources from BZ mods by brevven are added to blood recipes if installed (Aluminum, Lead, Flake Graphite, Wolframite, Zircon, Titanium).

Armoured/Cold/Explosive biters drop twice the amount of blood crystals because of the extra hassle dealing with them. Their spawners also drop quite a bit more spawner eggs.

## Mods that may go well with Rich Blood
[Rampant Evolution](https://mods.factorio.com/mod/RampantEvolution) by Veden. This mod allows fine-tuning of what affects evolution. For example, it can reduce evolution by a flat amount for each killed biter. This would slow down evolution in the early game, but will be negligible in the late game because evolution reduction on kill doesn't scale with biter size. Rampant Evolution also allows for control of evolution using pollution. For example, pollution absorption by spawners could be reducing evolution, and pollution absorption by terrain and trees could be increasing evolution. Combined with biter farms, this can incentivise player to pave the terrain and place air filters strategically so that most pollution is absorbed by spawners.


## Localization
- [Aquilo](https://mods.factorio.com/user/Aquilo) (ru)

This mod uses modified assets of Krastorio2.
