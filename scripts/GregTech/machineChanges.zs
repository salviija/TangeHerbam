import scripts.craft.craft.Craft;

#########
# STEAM #
#########

#steam boilers
craft.remake(<metaitem:steam_boiler_coal_bronze>, [
    "ccc",
    "cwc",
    "bfb"], {
    "b": <minecraft:brick_block>,
    "f": <tfc:blast_furnace>,
    "c": <metaitem:plateBronze>,
    "w": <metaitem:tool.wrench>
    }
);

craft.remake(<metaitem:steam_boiler_coal_bronze>, [
    "ccc",
    "cwc",
    "bfb"], {
    "b": <minecraft:brick_block>,
    "f": <tfc:blast_furnace>,
    "c": <metaitem:plateBronze>,
    "w": <metaitem:tool.wrench>
    }
);


# steam forge hammer
craft.remake(<metaitem:steam_hammer_bronze>, [
    "pip",
    "php",
    "pap"], {
    "i": <minecraft:piston>,
    "a": <tfc:metal/anvil/black_steel>,
    "h": <gregtech:steam_casing:0>,
    "p": <ore:pipeSmallFluidBronze>
    }
);