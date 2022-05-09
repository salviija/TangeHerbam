import scripts.craft.craft.Craft;

# first advanced crafting table
craft.remake(<extendedcrafting:table_advanced>, [
  "lsl",
  "atw",
  "bbb"], {
  "l": <minecraft:leather>,
  "s": <ore:slabStonePolished>,
  "w": <tfc:metal/saw/bronze>,
  "a": <tfc:metal/axe/bronze>,
  "t": <minecraft:crafting_table>,
  "b": <tfc:metal/double_sheet/bronze>
});  

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


# steam forge hammer
craft.remake(<metaitem:steam_hammer_bronze>, [
  "sppps",
  "pihip",
  "pi ip",
  "pAaAp",
  "bbBbb"], {
  "p": <metaitem:plateBronze>,
  "s": <metaitem:screwBronze>,
  "h": <tfc:metal/hammer/bronze>,
  "i": <metaitem:plateIron>,
  "a": <tfc:metal/anvil/black_bronze>,
  "A": <embers:aspectus_iron>,
  "B": <gregtech:steam_casing:1>,
  "b": <minecraft:brick_block>
});           