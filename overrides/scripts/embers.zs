import scripts.craft.craft.Craft;
import crafttweaker.item.IItemTransformer;
import mods.embers.Stamper;
import mods.gregtech.material.Material;
import mods.gregtech.recipe.Utils;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.Alloy;
import mods.embers.Mixer;
import crafttweaker.liquid.ILiquidStack;

craft.remake(<embers:ember_bore>, [
 "sbpbs",
 "blllb",
 "blclb",
 "sbbbs",
 "ggggg" ], {
 "s": <tfc:metal/double_sheet/bronze>,
 "b": <gregtech:metal_casing:1>,
 "p": <embers:item_pipe>,
 "l": <embers:block_caminite_brick_slab>,
 "g": <ore:gearStone>,
 "c": <tfc:crucible>
 });

# Atmospheric gauge
craft.remake(<embers:ember_detector>, [
 "sbs",
 "BrB",
 "sbs" ], {
 "s": <ore:screwTin>,
 "b": <ore:plateBlackBronze>,
 "B": <ore:plateBronze>,
 "r": <minecraft:redstone>
 });

# Ember Activator
craft.remake(<embers:ember_activator>, [
 " r r ",
 " rBr ",
 " bgb ",
 "SbhbS",
 "ccpcc" ], {
 "S": <ore:screwBronze>,
 "B": <ore:plateBronze>,
 "r": <ore:stickBronze>,
 "b": <ore:plateBlackBronze>,
 "c": <embers:block_caminite_brick_slab>,
 "p": <embers:item_pipe>,
 "g": <embers:dust_ember>,
 "h": <ore:hammer>.transformDamage(1)
 });

# Melter
craft.remake(<embers:block_furnace>, [
 " w w ",
 " w w ",
 " ici ",
 " bmb ",
 " brb " ], {
 "w": <embers:wall_caminite_brick>,
 "i": <embers:item_pipe>,
 "b": <ore:plateBlackBronze>,
 "m": <embers:mech_core>,
 "c": <embers:block_caminite_brick_slab>,
 "r": <embers:ember_receiver>
 });

# Stamper Base
craft.remake(<embers:stamper_base>, [
 "bwb",
 "cbc",
 "cPc" ], {
 "P": <embers:pipe>,
 "b": <ore:plateBlackBronze>,
 "c": <embers:block_caminite_brick>,
 "w": <ore:craftingToolWrench>
 });

# Stamper
craft.remake(<embers:stamper>, [
 "cbc",
 "cmc",
 " D " ], {
 "m": <embers:mech_core>,
 "b": <ore:plateBlackBronze>,
 "c": <embers:block_caminite_brick>,
 "D": <ore:plateDoubleBlackBronze>
 });

 # Tinker's Hammer
craft.remake(<embers:tinker_hammer>, [
 "iii",
 "isi",
 " s " ], {
 "s": <minecraft:stick>,
 "i": <ore:ingotBlackBronze>
 });

# Copper Cell
craft.remake(<embers:copper_cell>, [
 "cBc",
 "BEB",
 "cBc" ], {
 "B": <ore:plateBronze>,
 "c": <embers:block_caminite_brick>,
 "E": <embers:ember_receiver>
 });

# Fluid Extractor
craft.remake(<embers:pump>, [
 "lPl",
 "PCP",
 "lPl" ], {
 "C": <embers:plate_caminite>,
 "P": <embers:pipe>,
 "l": <ore:screwLead>
 });

# Item Extractor
craft.remake(<embers:item_pump>, [
 "lPl",
 "PCP",
 "lPl" ], {
 "C": <embers:plate_caminite>,
 "P": <embers:item_pipe>,
 "l": <ore:screwLead>
 });

# Ember Receptor
craft.remake(<embers:ember_receiver>, [
 "rhr",
 "bwb",
 "BCB" ], {
 "C": <embers:plate_caminite>,
 "B": <ore:plateBronze>,
 "r": <ore:stickBlackBronze>,
 "b": <ore:plateBlackBronze>,
 "h": <ore:hammer>.transformDamage(1),
 "w": <ore:craftingToolWrench>
 });

# Ember Emitter
craft.remake(<embers:ember_emitter>, [
 "hBw",
 "sis",
 "bCb" ], {
 "C": <embers:plate_caminite>,
 "B": <ore:plateBronze>,
 "s": <ore:screwBlackBronze>,
 "i": <ore:ingotBronze>,
 "b": <ore:plateBlackBronze>,
 "h": <ore:hammer>.transformDamage(1),
 "w": <ore:craftingToolWrench>
 });

# Ember Relay
craft.remake(<embers:ember_relay>, [
 " B ",
 "BwB",
 " b " ], {
 "w": <ore:craftingToolWrench>,
 "b": <ore:plateBlackBronze>,
 "B": <ore:plateBronze>,
 });
 
 # Ember Splitter
craft.remake(<embers:beam_splitter>, [
 "sbs",
 "BeB", 
 "sbs" ], { 
 "e": <embers:ember_emitter>,
 "b": <ore:plateBlackBronze>,
 "B": <ore:plateBronze>,
 "s": <ore:screwBlackBronze>,
 });

# Superheater
craft.remake(<embers:superheater>, [
 "wbw",
 "bcb",
 "wbw" ], {
 "w": <ore:wireGtSingleCopper>,
 "b": <ore:ingotBronze>,
 "c": <embers:crystal_ember>,
 });

# Mechanical Core
craft.remake(<embers:mech_core>, [
 "blb",
 "lwl",
 "blb" ], {
 "w": <ore:craftingToolWrench>,
 "b": <ore:plateBlackBronze>,
 "l": <ore:plateLead>,
 });

# Fluid Dial
craft.remake(<embers:fluid_gauge>*3, [
 "sbs",
 "brb",
 "sbs" ], {
 "s": <ore:screwBlackBronze>,
 "r": <minecraft:redstone>,
 "b": <ore:plateBlackBronze>,
 });

# Ember Dial
craft.remake(<embers:ember_gauge>*3, [
 "sBs",
 "BrB",
 "sBs" ], {
 "s": <ore:screwBronze>,
 "r": <minecraft:redstone>,
 "B": <ore:plateBronze>,
 });

# Caminite Blend
craft.reshapeless(<embers:blend_caminite>*2, 
 "cgs", {
 "c": <minecraft:clay_ball>,
 "g": <minecraft:gravel>,
 "s": <minecraft:sand>,
 });

# Caminite Bricks
craft.remake(<embers:block_caminite_brick>, [
 "cmc",
 "mcm", 
 "cmc" ], { 
 "m": <tfc:mortar>,
 "c": <embers:brick_caminite>,
 });
 

 // Embers Materials Conflicting with Gregtech
 val conflictingMaterials as Material[] = [
 <material:copper>,
 <material:gold>,
 <material:lead>,
 <material:silver>,
 <material:aluminium>,
 <material:bronze>,
 <material:electrum>,
 <material:nickel>,
 <material:tin>,
 ];

 // Merging Oredict for Embers and Gregtech Plates in Stamper
 val plateOredict as IOreDictEntry[] = [
 <ore:plateCopper>,
 <ore:plateGold>,
 <ore:plateLead>,
 <ore:plateSilver>,
 <ore:plateAluminium>,
 <ore:plateBronze>,
 <ore:plateElectrum>,
 <ore:plateNickel>,
 <ore:plateTin>
 ];

 for index, x in plateOredict {
   var y = conflictingMaterials[index];
   Stamper.remove(x.firstItem);
   Stamper.add(x.firstItem, Utils.fluid(y)*216, <embers:stamp_plate>);
 }

// TFC Alloy -> Mixer
// List of alloys in Mixer:
// Sterling silver
// Rose gold
// Black steel         -- Process is typically more complex in base TFC, so Mixer Line is not added as of yet
// Bronze
// Brass
// Bismuth bronze

val melterAlloys as string[] = [
  "STERLING_SILVER",
  "ROSE_GOLD",
  "BRONZE",
  "BRASS",
  "BISMUTH_BRONZE"
];

for x in melterAlloys {
  Alloy.removeAlloy(x);
}

Mixer.add(<liquid:sterling_silver>*10, [<liquid:copper>*3, <liquid:silver>*7]);
Mixer.add(<liquid:rose_gold>*10, [<liquid:copper>*2, <liquid:gold>*8]);
Mixer.add(<liquid:bronze>*10, [<liquid:copper>*9, <liquid:tin>*1]);
Mixer.add(<liquid:brass>*10, [<liquid:copper>*9, <liquid:zinc>*1]);
Mixer.add(<liquid:bismuth_bronze>*10, [<liquid:zinc>*2, <liquid:copper>*6, <liquid:bismuth>*2]);
