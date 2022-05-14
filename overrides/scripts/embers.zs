import scripts.craft.craft.Craft;
import crafttweaker.item.IItemTransformer;
import mods.embers.Stamper;
import mods.gregtech.material.Material;
import mods.gregtech.recipe.Utils;

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

# Stamped Materials Array (Early Game)
val stampedMaterials as Material[] = [<material:iron>,
                        <material:gold>,
                        <material:silver>,
                        <material:copper>,
                        <material:lead>,
                        <material:nickel>,
                        <material:tin>,
                        <material:bronze>,
                        <material:electrum>,
                        <material:blackBronze>
                        ];

# Embers Stamping Recipe Removal (Early Game Materials)
for x in stampedMaterials{
  Stamper.remove(Utils.ore("plate", x));
  Stamper.add(Utils.ore("plate", x), Utils.liquid(x)*216, <embers:stamp_plate>);
}
